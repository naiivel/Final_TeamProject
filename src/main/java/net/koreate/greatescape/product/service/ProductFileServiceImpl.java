package net.koreate.greatescape.product.service;

import java.io.File;

import javax.annotation.PostConstruct;
import javax.servlet.ServletContext;

import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import lombok.RequiredArgsConstructor;
import net.koreate.greatescape.utils.FileUtils;

@Service
@RequiredArgsConstructor
public class ProductFileServiceImpl implements ProductFileService {

	private final String uploadFolder;
	private final ServletContext context;
	private String realPath;

	@PostConstruct
	public void initPath() {
		realPath = context.getRealPath(File.separator + uploadFolder);
		File file = new File(realPath);
		if (!file.exists()) {
			file.mkdirs();
		}
	}
	
	@Override
	public String uploadFile(MultipartFile titleImage) throws Exception {
		String uploadedName = FileUtils.uploadFile(realPath, titleImage);
		return uploadedName;
	}

	@Override
	public String updateFile(String originalTitleImage, MultipartFile titleImage) throws Exception {
		if (originalTitleImage != null && !originalTitleImage.equals("")) {
			FileUtils.deleteFile(realPath, originalTitleImage);
		}
		return uploadFile(titleImage);
	}

	@Override
	public String uploadHtmlImage(MultipartFile file) throws Exception {
		String uploadedName = uploadFile(file);
		uploadedName = context.getContextPath() + "/" + uploadFolder + uploadedName;
		return uploadedName;
	}

}
