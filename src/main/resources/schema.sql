-- Create the images table to store image metadata
CREATE TABLE IF NOT EXISTS images (
                                      image_id INT AUTO_INCREMENT PRIMARY KEY,
                                      image_url VARCHAR(255) NOT NULL

);

-- Create the activity table to store activities
CREATE TABLE IF NOT EXISTS activity (
                                        activity_id BIGINT AUTO_INCREMENT PRIMARY KEY,
                                        title VARCHAR(255) NOT NULL,
                                        description TEXT,
                                        location VARCHAR(255),
                                        category_id INT NOT NULL,
                                        participant_limit INT,
                                        image_id INT,
                                        datetime TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
                                        CONSTRAINT fk_image FOREIGN KEY (image_id) REFERENCES images (image_id)
);

-- Create the category table to store categories
CREATE TABLE IF NOT EXISTS category (
                                        category_id INT AUTO_INCREMENT PRIMARY KEY,
                                        category_name VARCHAR(100) NOT NULL
);

