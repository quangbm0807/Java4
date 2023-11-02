package poly.com.servlet;

import java.io.File;
import java.io.IOException;
import java.util.Arrays;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

import org.apache.commons.beanutils.BeanUtils;
import org.apache.commons.beanutils.ConvertUtils;
import org.apache.commons.beanutils.converters.DateConverter;
import org.apache.commons.beanutils.converters.DateTimeConverter;

import poly.com.model.Staff;

@MultipartConfig
@WebServlet("/add")
public class StaffServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.getRequestDispatcher("/views/form.jsp").forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        try {
            req.setCharacterEncoding("utf-8");

            DateTimeConverter dtc = new DateConverter(new Date());
            dtc.setPattern("dd/MM/yyyy"); // Định dạng ngày tháng năm
            ConvertUtils.register(dtc, Date.class);

            Staff staff = new Staff();
            BeanUtils.populate(staff, req.getParameterMap());

            String[] hobbies = req.getParameterValues("hobbies");
            if (hobbies != null && hobbies.length > 0) {
                staff.setHobbies(hobbies);
            }
            String phait;

            

            // Kiểm tra các trường bắt buộc
            boolean hasError = false;
            StringBuilder errorMessage = new StringBuilder("Vui lòng nhập các trường sau:");
            
            if (staff.getFullname() == null || staff.getFullname().isEmpty()) {
                errorMessage.append("\\n- Họ và tên");
                hasError = true;
            }

            if (staff.getBirthday() == null) {
                errorMessage.append("\\n- Ngày sinh");
                hasError = true;
            }


            if (staff.getCountry() == null || staff.getCountry().isEmpty()) {
                errorMessage.append("\\n- Quốc gia");
                hasError = true;
            }

            // Kiểm tra xem đã chọn file ảnh chưa
            Part photo = req.getPart("photo_file");
            if (photo == null || photo.getSize() == 0) {
                errorMessage.append("\\n- Chưa chọn ảnh đại diện");
                hasError = true;
            } else {
                // Kiểm tra định dạng file ảnh
                String contentType = photo.getContentType();
                if (contentType == null || !contentType.startsWith("image")) {
                    errorMessage.append("\\n- File không phải là hình ảnh");
                    hasError = true;
                }
            }

            // Kiểm tra sở thích
            if (staff.getHobbies() == null || staff.getHobbies().length == 0) {
                errorMessage.append("\\n- Chưa chọn sở thích");
                hasError = true;
            }

            if (hasError) {
                // Nếu có lỗi, thông báo lỗi và quay lại trang nhập liệu
                resp.setContentType("text/html;charset=UTF-8");
                resp.getWriter().write("<script>alert('" + errorMessage.toString() + "');</script>");
                req.getRequestDispatcher("/views/form.jsp").include(req, resp);
                return;
            }

            // Lưu file ảnh và cập nhật thông tin vào đối tượng Staff
            File dir = new File(req.getServletContext().getRealPath("/files"));
            if (!dir.exists()) {
                dir.mkdir();
            }
            if (staff.isGender()) {
				phait = "Nam";
			}else {
				phait = "Nữ";
			}
            req.setAttribute("phait", phait);
            File photoFile = new File(dir, photo.getSubmittedFileName());
            photo.write(photoFile.getAbsolutePath());
            staff.setPhoto_file(photoFile.getName());

            // Set các thông tin cho request attribute để hiển thị trên trang kết quả
            req.setAttribute("bean", staff);
            
            String hobbiesString = Arrays.toString(staff.getHobbies());
            String hobbiesDisplay = hobbiesString.substring(1, hobbiesString.lastIndexOf("]")) + ".";
            req.setAttribute("st", hobbiesDisplay);

        } catch (Exception e) {
            e.printStackTrace();
        }
        req.getRequestDispatcher("/views/result.jsp").forward(req, resp);
    }
}
