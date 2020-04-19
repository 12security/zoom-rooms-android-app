.class public Lus/zoom/androidlib/util/ZMLog;
.super Ljava/lang/Object;
.source "ZMLog.java"


# static fields
.field private static logger:Lus/zoom/androidlib/util/ILogger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 13
    new-instance v0, Lus/zoom/androidlib/util/ZMLog$1;

    invoke-direct {v0}, Lus/zoom/androidlib/util/ZMLog$1;-><init>()V

    sput-object v0, Lus/zoom/androidlib/util/ZMLog;->logger:Lus/zoom/androidlib/util/ILogger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static varargs d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 0

    .line 68
    invoke-static {p0, p1, p2}, Lus/zoom/androidlib/util/ZMLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public static varargs d(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 0

    .line 78
    invoke-static {p0, p1, p2, p3}, Lus/zoom/androidlib/util/ZMLog;->i(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public static varargs e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2

    .line 116
    sget-object v0, Lus/zoom/androidlib/util/ZMLog;->logger:Lus/zoom/androidlib/util/ILogger;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lus/zoom/androidlib/util/ILogger;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lus/zoom/androidlib/util/ZMLog;->logger:Lus/zoom/androidlib/util/ILogger;

    invoke-interface {v0}, Lus/zoom/androidlib/util/ILogger;->getLevel()I

    move-result v0

    const/4 v1, 0x3

    if-le v0, v1, :cond_0

    goto :goto_0

    .line 119
    :cond_0
    check-cast p2, [Ljava/lang/Object;

    invoke-static {p1, p2}, Lus/zoom/androidlib/util/ZMLog;->formatMsg(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    .line 120
    check-cast p2, Ljava/lang/Throwable;

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p0, p2, p1, v0}, Lus/zoom/androidlib/util/ZMLog;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_1
    :goto_0
    return-void
.end method

.method public static varargs e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 3

    .line 124
    sget-object v0, Lus/zoom/androidlib/util/ZMLog;->logger:Lus/zoom/androidlib/util/ILogger;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lus/zoom/androidlib/util/ILogger;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lus/zoom/androidlib/util/ZMLog;->logger:Lus/zoom/androidlib/util/ILogger;

    invoke-interface {v0}, Lus/zoom/androidlib/util/ILogger;->getLevel()I

    move-result v0

    const/4 v1, 0x3

    if-le v0, v1, :cond_0

    goto :goto_0

    .line 127
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lus/zoom/androidlib/util/ZMLog;->getPrefix()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    check-cast p3, [Ljava/lang/Object;

    invoke-static {p2, p3}, Lus/zoom/androidlib/util/ZMLog;->formatMsg(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 129
    invoke-static {v1, p0, p2, p1}, Lus/zoom/androidlib/util/ZMLog;->writeLog(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void

    :cond_1
    :goto_0
    return-void
.end method

.method public static varargs er(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2

    .line 133
    sget-object v0, Lus/zoom/androidlib/util/ZMLog;->logger:Lus/zoom/androidlib/util/ILogger;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lus/zoom/androidlib/util/ILogger;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lus/zoom/androidlib/util/ZMLog;->logger:Lus/zoom/androidlib/util/ILogger;

    invoke-interface {v0}, Lus/zoom/androidlib/util/ILogger;->getLevel()I

    move-result v0

    const/4 v1, 0x4

    if-le v0, v1, :cond_0

    goto :goto_0

    .line 136
    :cond_0
    check-cast p2, [Ljava/lang/Object;

    invoke-static {p1, p2}, Lus/zoom/androidlib/util/ZMLog;->formatMsg(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    .line 137
    check-cast p2, Ljava/lang/Throwable;

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p0, p2, p1, v0}, Lus/zoom/androidlib/util/ZMLog;->er(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_1
    :goto_0
    return-void
.end method

.method public static varargs er(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 3

    .line 141
    sget-object v0, Lus/zoom/androidlib/util/ZMLog;->logger:Lus/zoom/androidlib/util/ILogger;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lus/zoom/androidlib/util/ILogger;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lus/zoom/androidlib/util/ZMLog;->logger:Lus/zoom/androidlib/util/ILogger;

    invoke-interface {v0}, Lus/zoom/androidlib/util/ILogger;->getLevel()I

    move-result v0

    const/4 v1, 0x4

    if-le v0, v1, :cond_0

    goto :goto_0

    .line 144
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lus/zoom/androidlib/util/ZMLog;->getPrefix()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    check-cast p3, [Ljava/lang/Object;

    invoke-static {p2, p3}, Lus/zoom/androidlib/util/ZMLog;->formatMsg(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 146
    invoke-static {v1, p0, p2, p1}, Lus/zoom/androidlib/util/ZMLog;->writeLog(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void

    :cond_1
    :goto_0
    return-void
.end method

.method public static varargs f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2

    .line 150
    sget-object v0, Lus/zoom/androidlib/util/ZMLog;->logger:Lus/zoom/androidlib/util/ILogger;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lus/zoom/androidlib/util/ILogger;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lus/zoom/androidlib/util/ZMLog;->logger:Lus/zoom/androidlib/util/ILogger;

    invoke-interface {v0}, Lus/zoom/androidlib/util/ILogger;->getLevel()I

    move-result v0

    const/4 v1, 0x5

    if-le v0, v1, :cond_0

    goto :goto_0

    .line 153
    :cond_0
    check-cast p2, [Ljava/lang/Object;

    invoke-static {p1, p2}, Lus/zoom/androidlib/util/ZMLog;->formatMsg(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    .line 154
    check-cast p2, Ljava/lang/Throwable;

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p0, p2, p1, v0}, Lus/zoom/androidlib/util/ZMLog;->f(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_1
    :goto_0
    return-void
.end method

.method public static varargs f(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 3

    .line 158
    sget-object v0, Lus/zoom/androidlib/util/ZMLog;->logger:Lus/zoom/androidlib/util/ILogger;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lus/zoom/androidlib/util/ILogger;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lus/zoom/androidlib/util/ZMLog;->logger:Lus/zoom/androidlib/util/ILogger;

    invoke-interface {v0}, Lus/zoom/androidlib/util/ILogger;->getLevel()I

    move-result v0

    const/4 v1, 0x5

    if-le v0, v1, :cond_0

    goto :goto_0

    .line 161
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lus/zoom/androidlib/util/ZMLog;->getPrefix()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    check-cast p3, [Ljava/lang/Object;

    invoke-static {p2, p3}, Lus/zoom/androidlib/util/ZMLog;->formatMsg(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 163
    invoke-static {v1, p0, p2, p1}, Lus/zoom/androidlib/util/ZMLog;->writeLog(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void

    :cond_1
    :goto_0
    return-void
.end method

.method private static varargs formatMsg(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    if-nez p0, :cond_0

    const-string p0, ""

    return-object p0

    :cond_0
    if-eqz p1, :cond_1

    .line 171
    array-length v0, p1

    if-lez v0, :cond_1

    .line 172
    check-cast p1, [Ljava/lang/Object;

    invoke-static {p0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    :cond_1
    return-object p0
.end method

.method private static getPrefix()Ljava/lang/String;
    .locals 5

    .line 178
    sget-object v0, Lus/zoom/androidlib/util/ZMLog;->logger:Lus/zoom/androidlib/util/ILogger;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 183
    :cond_0
    invoke-interface {v0}, Lus/zoom/androidlib/util/ILogger;->needLogThreadId()Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, ""

    goto :goto_0

    :cond_1
    const-string v0, "[T:%d]"

    const/4 v1, 0x1

    .line 186
    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {}, Lus/zoom/androidlib/util/ZMLog;->getThreadId()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method private static getThreadId()J
    .locals 2

    .line 192
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getId()J

    move-result-wide v0

    return-wide v0
.end method

.method public static varargs i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2

    .line 82
    sget-object v0, Lus/zoom/androidlib/util/ZMLog;->logger:Lus/zoom/androidlib/util/ILogger;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lus/zoom/androidlib/util/ILogger;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lus/zoom/androidlib/util/ZMLog;->logger:Lus/zoom/androidlib/util/ILogger;

    invoke-interface {v0}, Lus/zoom/androidlib/util/ILogger;->getLevel()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    goto :goto_0

    .line 85
    :cond_0
    check-cast p2, [Ljava/lang/Object;

    invoke-static {p1, p2}, Lus/zoom/androidlib/util/ZMLog;->formatMsg(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    .line 86
    check-cast p2, Ljava/lang/Throwable;

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p0, p2, p1, v0}, Lus/zoom/androidlib/util/ZMLog;->i(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_1
    :goto_0
    return-void
.end method

.method public static varargs i(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 3

    .line 90
    sget-object v0, Lus/zoom/androidlib/util/ZMLog;->logger:Lus/zoom/androidlib/util/ILogger;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lus/zoom/androidlib/util/ILogger;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lus/zoom/androidlib/util/ZMLog;->logger:Lus/zoom/androidlib/util/ILogger;

    invoke-interface {v0}, Lus/zoom/androidlib/util/ILogger;->getLevel()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    goto :goto_0

    .line 93
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lus/zoom/androidlib/util/ZMLog;->getPrefix()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    check-cast p3, [Ljava/lang/Object;

    invoke-static {p2, p3}, Lus/zoom/androidlib/util/ZMLog;->formatMsg(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 95
    invoke-static {v1, p0, p2, p1}, Lus/zoom/androidlib/util/ZMLog;->writeLog(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void

    :cond_1
    :goto_0
    return-void
.end method

.method public static isLogEnabled()Z
    .locals 1

    .line 57
    sget-object v0, Lus/zoom/androidlib/util/ZMLog;->logger:Lus/zoom/androidlib/util/ILogger;

    if-eqz v0, :cond_0

    .line 58
    invoke-interface {v0}, Lus/zoom/androidlib/util/ILogger;->isEnabled()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static setLogger(Lus/zoom/androidlib/util/ILogger;)V
    .locals 0

    .line 53
    sput-object p0, Lus/zoom/androidlib/util/ZMLog;->logger:Lus/zoom/androidlib/util/ILogger;

    return-void
.end method

.method public static varargs w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2

    .line 99
    sget-object v0, Lus/zoom/androidlib/util/ZMLog;->logger:Lus/zoom/androidlib/util/ILogger;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lus/zoom/androidlib/util/ILogger;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lus/zoom/androidlib/util/ZMLog;->logger:Lus/zoom/androidlib/util/ILogger;

    invoke-interface {v0}, Lus/zoom/androidlib/util/ILogger;->getLevel()I

    move-result v0

    const/4 v1, 0x2

    if-le v0, v1, :cond_0

    goto :goto_0

    .line 102
    :cond_0
    check-cast p2, [Ljava/lang/Object;

    invoke-static {p1, p2}, Lus/zoom/androidlib/util/ZMLog;->formatMsg(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    .line 103
    check-cast p2, Ljava/lang/Throwable;

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p0, p2, p1, v0}, Lus/zoom/androidlib/util/ZMLog;->w(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_1
    :goto_0
    return-void
.end method

.method public static varargs w(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 3

    .line 107
    sget-object v0, Lus/zoom/androidlib/util/ZMLog;->logger:Lus/zoom/androidlib/util/ILogger;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lus/zoom/androidlib/util/ILogger;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lus/zoom/androidlib/util/ZMLog;->logger:Lus/zoom/androidlib/util/ILogger;

    invoke-interface {v0}, Lus/zoom/androidlib/util/ILogger;->getLevel()I

    move-result v0

    const/4 v1, 0x2

    if-le v0, v1, :cond_0

    goto :goto_0

    .line 110
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lus/zoom/androidlib/util/ZMLog;->getPrefix()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    check-cast p3, [Ljava/lang/Object;

    invoke-static {p2, p3}, Lus/zoom/androidlib/util/ZMLog;->formatMsg(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 112
    invoke-static {v1, p0, p2, p1}, Lus/zoom/androidlib/util/ZMLog;->writeLog(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void

    :cond_1
    :goto_0
    return-void
.end method

.method private static writeLog(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    .line 196
    sget-object v0, Lus/zoom/androidlib/util/ZMLog;->logger:Lus/zoom/androidlib/util/ILogger;

    if-nez v0, :cond_0

    return-void

    .line 199
    :cond_0
    invoke-interface {v0, p0, p1, p2, p3}, Lus/zoom/androidlib/util/ILogger;->log(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method
