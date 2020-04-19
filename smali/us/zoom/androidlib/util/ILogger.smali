.class public interface abstract Lus/zoom/androidlib/util/ILogger;
.super Ljava/lang/Object;
.source "ILogger.java"


# static fields
.field public static final LOG_DEBUG:I = 0x0

.field public static final LOG_ERROR:I = 0x3

.field public static final LOG_ERROR_REPORT:I = 0x4

.field public static final LOG_FATAL:I = 0x5

.field public static final LOG_INFO:I = 0x1

.field public static final LOG_WARNING:I = 0x2


# virtual methods
.method public abstract getLevel()I
.end method

.method public abstract isEnabled()Z
.end method

.method public abstract log(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
.end method

.method public abstract needLogThreadId()Z
.end method
