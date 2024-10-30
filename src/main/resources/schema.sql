-- Create the category table
CREATE TABLE IF NOT EXISTS category (
                                        category_id INT AUTO_INCREMENT PRIMARY KEY,
                                        category_name VARCHAR(100) NOT NULL
);

-- Create the images table
CREATE TABLE IF NOT EXISTS images (
                                      image_id INT AUTO_INCREMENT PRIMARY KEY,
                                      image_url VARCHAR(255) NOT NULL,
                                      description VARCHAR(255)
);

-- Create the activity table
CREATE TABLE IF NOT EXISTS activity (
                                        activity_id BIGINT AUTO_INCREMENT PRIMARY KEY,
                                        title VARCHAR(255) NOT NULL,
                                        description TEXT,
                                        location VARCHAR(255),
                                        category_id INT NOT NULL,
                                        participant_limit INT DEFAULT NULL,
                                        image_id INT,
                                        datetime TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
                                        CONSTRAINT fk_category FOREIGN KEY (category_id) REFERENCES category (category_id),
                                        CONSTRAINT fk_image FOREIGN KEY (image_id) REFERENCES images (image_id)
);

