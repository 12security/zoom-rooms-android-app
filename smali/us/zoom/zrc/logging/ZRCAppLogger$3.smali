.class Lus/zoom/zrc/logging/ZRCAppLogger$3;
.super Ljava/lang/Object;
.source "ZRCAppLogger.java"

# interfaces
.implements Lus/zoom/zrcsdk/util/ILogger;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lus/zoom/zrc/logging/ZRCAppLogger;->getZrcLogger()Lus/zoom/zrcsdk/util/ILogger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lus/zoom/zrc/logging/ZRCAppLogger;


# direct methods
.method constructor <init>(Lus/zoom/zrc/logging/ZRCAppLogger;)V
    .locals 0

    .line 156
    iput-object p1, p0, Lus/zoom/zrc/logging/ZRCAppLogger$3;->this$0:Lus/zoom/zrc/logging/ZRCAppLogger;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public forceFlush()V
    .locals 1

    .line 185
    iget-object v0, p0, Lus/zoom/zrc/logging/ZRCAppLogger$3;->this$0:Lus/zoom/zrc/logging/ZRCAppLogger;

    invoke-static {v0}, Lus/zoom/zrc/logging/ZRCAppLogger;->access$600(Lus/zoom/zrc/logging/ZRCAppLogger;)V

    return-void
.end method

.method public getLevel()I
    .locals 1

    .line 165
    iget-object v0, p0, Lus/zoom/zrc/logging/ZRCAppLogger$3;->this$0:Lus/zoom/zrc/logging/ZRCAppLogger;

    invoke-static {v0}, Lus/zoom/zrc/logging/ZRCAppLogger;->access$400(Lus/zoom/zrc/logging/ZRCAppLogger;)I

    move-result v0

    return v0
.end method

.method public getLogFolder()Ljava/lang/String;
    .locals 1

    .line 175
    iget-object v0, p0, Lus/zoom/zrc/logging/ZRCAppLogger$3;->this$0:Lus/zoom/zrc/logging/ZRCAppLogger;

    invoke-static {v0}, Lus/zoom/zrc/logging/ZRCAppLogger;->access$500(Lus/zoom/zrc/logging/ZRCAppLogger;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isEnabled()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public log(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    .line 180
    iget-object v0, p0, Lus/zoom/zrc/logging/ZRCAppLogger$3;->this$0:Lus/zoom/zrc/logging/ZRCAppLogger;

    invoke-static {v0, p1, p2, p3, p4}, Lus/zoom/zrc/logging/ZRCAppLogger;->access$300(Lus/zoom/zrc/logging/ZRCAppLogger;ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public needLogThreadId()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
