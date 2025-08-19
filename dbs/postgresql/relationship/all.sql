CREATE TABLE hostel(
    id BIGSERIAL PRIMARY KEY,
    student_id INTEGER REFERENCES student(id),
    name TEXT,
    room TEXT
)

CREATE TABLE student_subject(
    id BIGSERIAL PRIMARY KEY,
    student_id INTEGER NOT NULL REFERENCES student(id),
    subject_id BIGINT NOT NULL REFERENCES subject
)