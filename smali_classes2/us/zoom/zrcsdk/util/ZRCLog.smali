.class public Lus/zoom/zrcsdk/util/ZRCLog;
.super Ljava/lang/Object;
.source "ZRCLog.java"


# static fields
.field private static final ANONYMOUS_CLASS:Ljava/util/regex/Pattern;

.field public static final LOG_DEBUG:I = 0x0

.field public static final LOG_DESTINATION_NONE:I = 0x0

.field public static final LOG_DESTINATION_ONLY_TO_FILE:I = 0x1

.field public static final LOG_DESTINATION_ONLY_TO_SYSTEM_DEBUG_LOG:I = 0x2

.field public static final LOG_DESTINATION_TO_BOTH_FILE_AND_SYSTEM_DEBUG_LOG:I = 0x3

.field public static final LOG_ERROR:I = 0x3

.field public static final LOG_ERROR_REPORT:I = 0x4

.field public static final LOG_FATAL:I = 0x5

.field public static final LOG_INFO:I = 0x1

.field public static final LOG_VERBOSE:I = -0x1

.field public static final LOG_WARNING:I = 0x2

.field private static logger:Lus/zoom/zrcsdk/util/ILogger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 23
    new-instance v0, Lus/zoom/zrcsdk/util/ZRCLog$1;

    invoke-direct {v0}, Lus/zoom/zrcsdk/util/ZRCLog$1;-><init>()V

    sput-object v0, Lus/zoom/zrcsdk/util/ZRCLog;->logger:Lus/zoom/zrcsdk/util/ILogger;

    const-string v0, "(\\$\\d+)+$"

    .line 235
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lus/zoom/zrcsdk/util/ZRCLog;->ANONYMOUS_CLASS:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static varargs d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    .line 83
    sget-object v0, Lus/zoom/zrcsdk/util/ZRCLog;->logger:Lus/zoom/zrcsdk/util/ILogger;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lus/zoom/zrcsdk/util/ILogger;->getLevel()I

    move-result v0

    if-lez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 86
    invoke-static {p0, v0, p1, p2}, Lus/zoom/zrcsdk/util/ZRCLog;->d(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_1
    :goto_0
    return-void
.end method

.method public static varargs d(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    .line 90
    sget-object v0, Lus/zoom/zrcsdk/util/ZRCLog;->logger:Lus/zoom/zrcsdk/util/ILogger;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lus/zoom/zrcsdk/util/ILogger;->getLevel()I

    move-result v0

    if-lez v0, :cond_0

    goto :goto_0

    .line 93
    :cond_0
    check-cast p3, [Ljava/lang/Object;

    invoke-static {p2, p3}, Lus/zoom/zrcsdk/util/ZRCLog;->formatMsg(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    const/4 p3, 0x0

    .line 94
    invoke-static {p3, p0, p2, p1}, Lus/zoom/zrcsdk/util/ZRCLog;->printLog(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void

    :cond_1
    :goto_0
    return-void
.end method

.method public static varargs debug(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    .line 76
    sget-object v0, Lus/zoom/zrcsdk/util/ZRCLog;->logger:Lus/zoom/zrcsdk/util/ILogger;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lus/zoom/zrcsdk/util/ILogger;->getLevel()I

    move-result v0

    if-lez v0, :cond_0

    goto :goto_0

    .line 79
    :cond_0
    invoke-static {}, Lus/zoom/zrcsdk/util/ZRCLog;->getDefaultTag()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p0, p1}, Lus/zoom/zrcsdk/util/ZRCLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_1
    :goto_0
    return-void
.end method

.method public static varargs e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2

    .line 167
    sget-object v0, Lus/zoom/zrcsdk/util/ZRCLog;->logger:Lus/zoom/zrcsdk/util/ILogger;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lus/zoom/zrcsdk/util/ILogger;->getLevel()I

    move-result v0

    const/4 v1, 0x3

    if-le v0, v1, :cond_0

    goto :goto_0

    .line 170
    :cond_0
    check-cast p2, [Ljava/lang/Object;

    invoke-static {p1, p2}, Lus/zoom/zrcsdk/util/ZRCLog;->formatMsg(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    .line 171
    check-cast p2, Ljava/lang/Throwable;

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p0, p2, p1, v0}, Lus/zoom/zrcsdk/util/ZRCLog;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_1
    :goto_0
    return-void
.end method

.method public static varargs e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2

    .line 175
    sget-object v0, Lus/zoom/zrcsdk/util/ZRCLog;->logger:Lus/zoom/zrcsdk/util/ILogger;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lus/zoom/zrcsdk/util/ILogger;->getLevel()I

    move-result v0

    const/4 v1, 0x3

    if-le v0, v1, :cond_0

    goto :goto_0

    .line 178
    :cond_0
    check-cast p3, [Ljava/lang/Object;

    invoke-static {p2, p3}, Lus/zoom/zrcsdk/util/ZRCLog;->formatMsg(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    .line 179
    invoke-static {v1, p0, p2, p1}, Lus/zoom/zrcsdk/util/ZRCLog;->printLog(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void

    :cond_1
    :goto_0
    return-void
.end method

.method public static varargs er(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2

    .line 184
    sget-object v0, Lus/zoom/zrcsdk/util/ZRCLog;->logger:Lus/zoom/zrcsdk/util/ILogger;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lus/zoom/zrcsdk/util/ILogger;->getLevel()I

    move-result v0

    const/4 v1, 0x4

    if-le v0, v1, :cond_0

    goto :goto_0

    .line 187
    :cond_0
    check-cast p2, [Ljava/lang/Object;

    invoke-static {p1, p2}, Lus/zoom/zrcsdk/util/ZRCLog;->formatMsg(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    .line 188
    check-cast p2, Ljava/lang/Throwable;

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p0, p2, p1, v0}, Lus/zoom/zrcsdk/util/ZRCLog;->er(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_1
    :goto_0
    return-void
.end method

.method private static varargs er(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2

    .line 192
    sget-object v0, Lus/zoom/zrcsdk/util/ZRCLog;->logger:Lus/zoom/zrcsdk/util/ILogger;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lus/zoom/zrcsdk/util/ILogger;->getLevel()I

    move-result v0

    const/4 v1, 0x4

    if-le v0, v1, :cond_0

    goto :goto_0

    .line 195
    :cond_0
    check-cast p3, [Ljava/lang/Object;

    invoke-static {p2, p3}, Lus/zoom/zrcsdk/util/ZRCLog;->formatMsg(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    .line 197
    invoke-static {v1, p0, p2, p1}, Lus/zoom/zrcsdk/util/ZRCLog;->printLog(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void

    :cond_1
    :goto_0
    return-void
.end method

.method public static varargs error(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    .line 160
    sget-object v0, Lus/zoom/zrcsdk/util/ZRCLog;->logger:Lus/zoom/zrcsdk/util/ILogger;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lus/zoom/zrcsdk/util/ILogger;->getLevel()I

    move-result v0

    if-lez v0, :cond_0

    goto :goto_0

    .line 163
    :cond_0
    invoke-static {}, Lus/zoom/zrcsdk/util/ZRCLog;->getDefaultTag()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p0, p1}, Lus/zoom/zrcsdk/util/ZRCLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_1
    :goto_0
    return-void
.end method

.method public static varargs f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2

    .line 201
    sget-object v0, Lus/zoom/zrcsdk/util/ZRCLog;->logger:Lus/zoom/zrcsdk/util/ILogger;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lus/zoom/zrcsdk/util/ILogger;->getLevel()I

    move-result v0

    const/4 v1, 0x5

    if-le v0, v1, :cond_0

    goto :goto_0

    .line 204
    :cond_0
    check-cast p2, [Ljava/lang/Object;

    invoke-static {p1, p2}, Lus/zoom/zrcsdk/util/ZRCLog;->formatMsg(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    .line 205
    check-cast p2, Ljava/lang/Throwable;

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p0, p2, p1, v0}, Lus/zoom/zrcsdk/util/ZRCLog;->f(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_1
    :goto_0
    return-void
.end method

.method public static varargs f(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2

    .line 209
    sget-object v0, Lus/zoom/zrcsdk/util/ZRCLog;->logger:Lus/zoom/zrcsdk/util/ILogger;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lus/zoom/zrcsdk/util/ILogger;->getLevel()I

    move-result v0

    const/4 v1, 0x5

    if-le v0, v1, :cond_0

    goto :goto_0

    .line 212
    :cond_0
    check-cast p3, [Ljava/lang/Object;

    invoke-static {p2, p3}, Lus/zoom/zrcsdk/util/ZRCLog;->formatMsg(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    .line 214
    invoke-static {v1, p0, p2, p1}, Lus/zoom/zrcsdk/util/ZRCLog;->printLog(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void

    :cond_1
    :goto_0
    return-void
.end method

.method public static forceFlush()V
    .locals 1

    .line 218
    sget-object v0, Lus/zoom/zrcsdk/util/ZRCLog;->logger:Lus/zoom/zrcsdk/util/ILogger;

    if-nez v0, :cond_0

    return-void

    .line 221
    :cond_0
    invoke-interface {v0}, Lus/zoom/zrcsdk/util/ILogger;->forceFlush()V

    return-void
.end method

.method private static varargs formatMsg(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    if-nez p0, :cond_0

    const-string p0, ""

    return-object p0

    :cond_0
    if-eqz p1, :cond_1

    .line 229
    array-length v0, p1

    if-lez v0, :cond_1

    .line 230
    check-cast p1, [Ljava/lang/Object;

    invoke-static {p0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    :cond_1
    return-object p0
.end method

.method private static getDefaultTag()Ljava/lang/String;
    .locals 6

    .line 238
    new-instance v0, Ljava/lang/Throwable;

    invoke-direct {v0}, Ljava/lang/Throwable;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    const-string v1, ""

    const/4 v2, 0x2

    .line 242
    :goto_0
    array-length v3, v0

    const/4 v4, -0x1

    if-le v3, v2, :cond_1

    .line 243
    aget-object v1, v0, v2

    .line 244
    invoke-virtual {v1}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v3

    .line 245
    const-class v5, Lus/zoom/zrcsdk/util/ZRCLog;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const-string v1, ""

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 249
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result v0

    move-object v1, v3

    goto :goto_1

    :cond_1
    const/4 v0, -0x1

    .line 253
    :goto_1
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_2

    const-string v0, ""

    return-object v0

    .line 256
    :cond_2
    sget-object v2, Lus/zoom/zrcsdk/util/ZRCLog;->ANONYMOUS_CLASS:Ljava/util/regex/Pattern;

    invoke-virtual {v2, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    .line 257
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->find()Z

    move-result v3

    if-eqz v3, :cond_3

    const-string v1, ""

    .line 258
    invoke-virtual {v2, v1}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :cond_3
    const/16 v2, 0x2e

    .line 260
    invoke-virtual {v1, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    if-le v0, v4, :cond_4

    .line 263
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "("

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_4
    return-object v1
.end method

.method public static getLevel()I
    .locals 1

    .line 72
    sget-object v0, Lus/zoom/zrcsdk/util/ZRCLog;->logger:Lus/zoom/zrcsdk/util/ILogger;

    invoke-interface {v0}, Lus/zoom/zrcsdk/util/ILogger;->getLevel()I

    move-result v0

    return v0
.end method

.method public static getLogFolder()Ljava/lang/String;
    .locals 1

    .line 60
    sget-object v0, Lus/zoom/zrcsdk/util/ZRCLog;->logger:Lus/zoom/zrcsdk/util/ILogger;

    invoke-interface {v0}, Lus/zoom/zrcsdk/util/ILogger;->getLogFolder()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getPrefix()Ljava/lang/String;
    .locals 6

    .line 274
    sget-object v0, Lus/zoom/zrcsdk/util/ZRCLog;->logger:Lus/zoom/zrcsdk/util/ILogger;

    if-nez v0, :cond_0

    const-string v0, ""

    return-object v0

    .line 280
    :cond_0
    invoke-interface {v0}, Lus/zoom/zrcsdk/util/ILogger;->needLogThreadId()Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, ""

    goto :goto_0

    .line 283
    :cond_1
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v1, "[T:%d]"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {}, Lus/zoom/zrcsdk/util/ZRCLog;->getThreadId()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method private static getThreadId()J
    .locals 2

    .line 270
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getId()J

    move-result-wide v0

    return-wide v0
.end method

.method public static varargs i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2

    .line 121
    sget-object v0, Lus/zoom/zrcsdk/util/ZRCLog;->logger:Lus/zoom/zrcsdk/util/ILogger;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lus/zoom/zrcsdk/util/ILogger;->getLevel()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    goto :goto_0

    .line 124
    :cond_0
    check-cast p2, [Ljava/lang/Object;

    invoke-static {p1, p2}, Lus/zoom/zrcsdk/util/ZRCLog;->formatMsg(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    .line 125
    check-cast p2, Ljava/lang/Throwable;

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p0, p2, p1, v0}, Lus/zoom/zrcsdk/util/ZRCLog;->i(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_1
    :goto_0
    return-void
.end method

.method public static varargs i(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2

    .line 129
    sget-object v0, Lus/zoom/zrcsdk/util/ZRCLog;->logger:Lus/zoom/zrcsdk/util/ILogger;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lus/zoom/zrcsdk/util/ILogger;->getLevel()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    goto :goto_0

    .line 132
    :cond_0
    check-cast p3, [Ljava/lang/Object;

    invoke-static {p2, p3}, Lus/zoom/zrcsdk/util/ZRCLog;->formatMsg(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    .line 133
    invoke-static {v1, p0, p2, p1}, Lus/zoom/zrcsdk/util/ZRCLog;->printLog(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void

    :cond_1
    :goto_0
    return-void
.end method

.method public static varargs info(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2

    .line 114
    sget-object v0, Lus/zoom/zrcsdk/util/ZRCLog;->logger:Lus/zoom/zrcsdk/util/ILogger;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lus/zoom/zrcsdk/util/ILogger;->getLevel()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    goto :goto_0

    .line 117
    :cond_0
    invoke-static {}, Lus/zoom/zrcsdk/util/ZRCLog;->getDefaultTag()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p0, p1}, Lus/zoom/zrcsdk/util/ZRCLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_1
    :goto_0
    return-void
.end method

.method private static printLog(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2

    .line 289
    sget-object v0, Lus/zoom/zrcsdk/util/ZRCLog;->logger:Lus/zoom/zrcsdk/util/ILogger;

    if-nez v0, :cond_0

    return-void

    .line 293
    :cond_0
    invoke-interface {v0}, Lus/zoom/zrcsdk/util/ILogger;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 297
    :cond_1
    sget-object v0, Lus/zoom/zrcsdk/util/ZRCLog;->logger:Lus/zoom/zrcsdk/util/ILogger;

    invoke-interface {v0}, Lus/zoom/zrcsdk/util/ILogger;->getLevel()I

    move-result v0

    if-le v0, p0, :cond_2

    return-void

    .line 301
    :cond_2
    invoke-static {p1}, Lus/zoom/zrcsdk/util/StringUtil;->isEmptyOrNull(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 302
    invoke-static {}, Lus/zoom/zrcsdk/util/ZRCLog;->getDefaultTag()Ljava/lang/String;

    move-result-object p1

    .line 305
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lus/zoom/zrcsdk/util/ZRCLog;->getPrefix()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 306
    sget-object v0, Lus/zoom/zrcsdk/util/ZRCLog;->logger:Lus/zoom/zrcsdk/util/ILogger;

    invoke-interface {v0, p0, p1, p2, p3}, Lus/zoom/zrcsdk/util/ILogger;->log(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static printStackTrace()V
    .locals 3

    const-string v0, ""

    const/4 v1, 0x0

    .line 98
    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {v0, v2, v1}, Lus/zoom/zrcsdk/util/ZRCLog;->printStackTrace(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public static printStackTrace(Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x0

    .line 102
    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-static {p0, v1, v0}, Lus/zoom/zrcsdk/util/ZRCLog;->printStackTrace(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public static varargs printStackTrace(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2

    .line 106
    sget-object v0, Lus/zoom/zrcsdk/util/ZRCLog;->logger:Lus/zoom/zrcsdk/util/ILogger;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lus/zoom/zrcsdk/util/ILogger;->getLevel()I

    move-result v0

    if-lez v0, :cond_0

    goto :goto_0

    .line 109
    :cond_0
    check-cast p2, [Ljava/lang/Object;

    invoke-static {p1, p2}, Lus/zoom/zrcsdk/util/ZRCLog;->formatMsg(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    .line 110
    new-instance v0, Ljava/lang/Throwable;

    const-string v1, "stack trace"

    invoke-direct {v0, v1}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-static {p2, p0, p1, v0}, Lus/zoom/zrcsdk/util/ZRCLog;->printLog(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void

    :cond_1
    :goto_0
    return-void
.end method

.method public static setLogger(Lus/zoom/zrcsdk/util/ILogger;)V
    .locals 0

    .line 56
    sput-object p0, Lus/zoom/zrcsdk/util/ZRCLog;->logger:Lus/zoom/zrcsdk/util/ILogger;

    return-void
.end method

.method public static varargs verbose(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2

    .line 64
    sget-object v0, Lus/zoom/zrcsdk/util/ZRCLog;->logger:Lus/zoom/zrcsdk/util/ILogger;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lus/zoom/zrcsdk/util/ILogger;->getLevel()I

    move-result v0

    const/4 v1, -0x1

    if-le v0, v1, :cond_0

    goto :goto_0

    .line 67
    :cond_0
    check-cast p1, [Ljava/lang/Object;

    invoke-static {p0, p1}, Lus/zoom/zrcsdk/util/ZRCLog;->formatMsg(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 68
    invoke-static {}, Lus/zoom/zrcsdk/util/ZRCLog;->getDefaultTag()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    invoke-static {v1, p1, p0, v0}, Lus/zoom/zrcsdk/util/ZRCLog;->printLog(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void

    :cond_1
    :goto_0
    return-void
.end method

.method public static varargs w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2

    .line 144
    sget-object v0, Lus/zoom/zrcsdk/util/ZRCLog;->logger:Lus/zoom/zrcsdk/util/ILogger;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lus/zoom/zrcsdk/util/ILogger;->getLevel()I

    move-result v0

    const/4 v1, 0x2

    if-le v0, v1, :cond_0

    goto :goto_0

    .line 147
    :cond_0
    check-cast p2, [Ljava/lang/Object;

    invoke-static {p1, p2}, Lus/zoom/zrcsdk/util/ZRCLog;->formatMsg(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    .line 148
    check-cast p2, Ljava/lang/Throwable;

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p0, p2, p1, v0}, Lus/zoom/zrcsdk/util/ZRCLog;->w(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_1
    :goto_0
    return-void
.end method

.method public static varargs w(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2

    .line 152
    sget-object v0, Lus/zoom/zrcsdk/util/ZRCLog;->logger:Lus/zoom/zrcsdk/util/ILogger;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lus/zoom/zrcsdk/util/ILogger;->getLevel()I

    move-result v0

    const/4 v1, 0x2

    if-le v0, v1, :cond_0

    goto :goto_0

    .line 155
    :cond_0
    check-cast p3, [Ljava/lang/Object;

    invoke-static {p2, p3}, Lus/zoom/zrcsdk/util/ZRCLog;->formatMsg(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    .line 156
    invoke-static {v1, p0, p2, p1}, Lus/zoom/zrcsdk/util/ZRCLog;->printLog(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void

    :cond_1
    :goto_0
    return-void
.end method

.method public static varargs warn(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    .line 137
    sget-object v0, Lus/zoom/zrcsdk/util/ZRCLog;->logger:Lus/zoom/zrcsdk/util/ILogger;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lus/zoom/zrcsdk/util/ILogger;->getLevel()I

    move-result v0

    if-lez v0, :cond_0

    goto :goto_0

    .line 140
    :cond_0
    invoke-static {}, Lus/zoom/zrcsdk/util/ZRCLog;->getDefaultTag()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p0, p1}, Lus/zoom/zrcsdk/util/ZRCLog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_1
    :goto_0
    return-void
.end method
