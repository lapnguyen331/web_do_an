package com.project.mappers;

import com.project.models.Producer;
import org.jdbi.v3.core.statement.StatementContext;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.time.LocalDateTime;

public class ProducerRowMapper extends ARowMapper<Producer> {
    public ProducerRowMapper(String alias) {
        super(alias);
    }

    public ProducerRowMapper() {
    }


    @Override
    public Producer map(ResultSet rs, StatementContext ctx) throws SQLException {
        Producer producer;
        try {
            int id = rs.getInt(this.alias+"id");
            String name = rs.getString(this.alias+"name");
            boolean status = rs.getBoolean(this.alias+"status");
            String address = rs.getString(this.alias+"address");
            String email = rs.getString(this.alias+"email");
            String phone = rs.getString(this.alias+"phone");
            String taxCode = rs.getString(this.alias+"taxCode");
            var createAt = ctx.findColumnMapperFor(LocalDateTime.class).get().map(rs, this.alias+"createAt", ctx);
            var updateAt = ctx.findColumnMapperFor(LocalDateTime.class).get().map(rs, this.alias+"updateAt", ctx);
            producer = new Producer(id, name, status, address, email, phone, taxCode, createAt, updateAt);
        } catch (SQLException e) {
            e.printStackTrace();
            producer = null;
        }
        return producer;
    }
}
