ALTER TABLE productos
ADD COLUMN usuario_id INT NOT NULL;

ALTER TABLE productos
ADD CONSTRAINT fk_productos_usuarios
FOREIGN KEY (usuario_id)
REFERENCES usuarios(id)
ON DELETE CASCADE
ON UPDATE CASCADE;
