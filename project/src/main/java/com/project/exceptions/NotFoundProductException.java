package com.project.exceptions;

public class NotFoundProductException extends Exception {
    public NotFoundProductException() {
        super();
    }

    public NotFoundProductException(String message) {
        super(message);
    }

    public NotFoundProductException(String message, Throwable cause) {
        super(message, cause);
    }

    public NotFoundProductException(Throwable cause) {
        super(cause);
    }

    protected NotFoundProductException(String message, Throwable cause, boolean enableSuppression, boolean writableStackTrace) {
        super(message, cause, enableSuppression, writableStackTrace);
    }
}
