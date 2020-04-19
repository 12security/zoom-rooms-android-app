.class public Lus/zoom/zrcsdk/util/ZRCNativeLogger$ServerLogger;
.super Ljava/lang/Object;
.source "ZRCNativeLogger.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lus/zoom/zrcsdk/util/ZRCNativeLogger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ServerLogger"
.end annotation


# instance fields
.field private inited:Z

.field final synthetic this$0:Lus/zoom/zrcsdk/util/ZRCNativeLogger;


# direct methods
.method public constructor <init>(Lus/zoom/zrcsdk/util/ZRCNativeLogger;)V
    .locals 0

    .line 44
    iput-object p1, p0, Lus/zoom/zrcsdk/util/ZRCNativeLogger$ServerLogger;->this$0:Lus/zoom/zrcsdk/util/ZRCNativeLogger;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public forceFlush()V
    .locals 1

    .line 71
    iget-object v0, p0, Lus/zoom/zrcsdk/util/ZRCNativeLogger$ServerLogger;->this$0:Lus/zoom/zrcsdk/util/ZRCNativeLogger;

    invoke-static {v0}, Lus/zoom/zrcsdk/util/ZRCNativeLogger;->access$600(Lus/zoom/zrcsdk/util/ZRCNativeLogger;)V

    return-void
.end method

.method public init(JI)V
    .locals 1

    .line 49
    iget-boolean v0, p0, Lus/zoom/zrcsdk/util/ZRCNativeLogger$ServerLogger;->inited:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 52
    iput-boolean v0, p0, Lus/zoom/zrcsdk/util/ZRCNativeLogger$ServerLogger;->inited:Z

    .line 53
    iget-object v0, p0, Lus/zoom/zrcsdk/util/ZRCNativeLogger$ServerLogger;->this$0:Lus/zoom/zrcsdk/util/ZRCNativeLogger;

    invoke-static {v0, p1, p2, p3}, Lus/zoom/zrcsdk/util/ZRCNativeLogger;->access$300(Lus/zoom/zrcsdk/util/ZRCNativeLogger;JI)V

    return-void
.end method

.method public printLog(ILjava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 65
    invoke-static {p3}, Lus/zoom/zrcsdk/util/StringUtil;->isEmptyOrNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 66
    iget-object v0, p0, Lus/zoom/zrcsdk/util/ZRCNativeLogger$ServerLogger;->this$0:Lus/zoom/zrcsdk/util/ZRCNativeLogger;

    invoke-static {v0, p1, p2, p3}, Lus/zoom/zrcsdk/util/ZRCNativeLogger;->access$500(Lus/zoom/zrcsdk/util/ZRCNativeLogger;ILjava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public release()V
    .locals 1

    .line 57
    iget-boolean v0, p0, Lus/zoom/zrcsdk/util/ZRCNativeLogger$ServerLogger;->inited:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 60
    iput-boolean v0, p0, Lus/zoom/zrcsdk/util/ZRCNativeLogger$ServerLogger;->inited:Z

    .line 61
    iget-object v0, p0, Lus/zoom/zrcsdk/util/ZRCNativeLogger$ServerLogger;->this$0:Lus/zoom/zrcsdk/util/ZRCNativeLogger;

    invoke-static {v0}, Lus/zoom/zrcsdk/util/ZRCNativeLogger;->access$400(Lus/zoom/zrcsdk/util/ZRCNativeLogger;)V

    return-void
.end method
