.class public Lus/zoom/zrcsdk/util/ZRCNativeLogger$ClientLogger;
.super Ljava/lang/Object;
.source "ZRCNativeLogger.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lus/zoom/zrcsdk/util/ZRCNativeLogger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ClientLogger"
.end annotation


# instance fields
.field private inited:Z

.field private nativeCallback:Lus/zoom/zrcsdk/util/ZRCNativeLogger$INativeLogCallback;

.field final synthetic this$0:Lus/zoom/zrcsdk/util/ZRCNativeLogger;


# direct methods
.method public constructor <init>(Lus/zoom/zrcsdk/util/ZRCNativeLogger;)V
    .locals 0

    .line 11
    iput-object p1, p0, Lus/zoom/zrcsdk/util/ZRCNativeLogger$ClientLogger;->this$0:Lus/zoom/zrcsdk/util/ZRCNativeLogger;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$700(Lus/zoom/zrcsdk/util/ZRCNativeLogger$ClientLogger;)Lus/zoom/zrcsdk/util/ZRCNativeLogger$INativeLogCallback;
    .locals 0

    .line 11
    iget-object p0, p0, Lus/zoom/zrcsdk/util/ZRCNativeLogger$ClientLogger;->nativeCallback:Lus/zoom/zrcsdk/util/ZRCNativeLogger$INativeLogCallback;

    return-object p0
.end method


# virtual methods
.method public init(II)V
    .locals 1

    .line 18
    iget-boolean v0, p0, Lus/zoom/zrcsdk/util/ZRCNativeLogger$ClientLogger;->inited:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 21
    iput-boolean v0, p0, Lus/zoom/zrcsdk/util/ZRCNativeLogger$ClientLogger;->inited:Z

    .line 22
    iget-object v0, p0, Lus/zoom/zrcsdk/util/ZRCNativeLogger$ClientLogger;->this$0:Lus/zoom/zrcsdk/util/ZRCNativeLogger;

    invoke-static {v0, p1, p2}, Lus/zoom/zrcsdk/util/ZRCNativeLogger;->access$000(Lus/zoom/zrcsdk/util/ZRCNativeLogger;II)V

    return-void
.end method

.method public printLog(ILjava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 34
    invoke-static {p3}, Lus/zoom/zrcsdk/util/StringUtil;->isEmptyOrNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 35
    iget-object v0, p0, Lus/zoom/zrcsdk/util/ZRCNativeLogger$ClientLogger;->this$0:Lus/zoom/zrcsdk/util/ZRCNativeLogger;

    invoke-static {v0, p1, p2, p3}, Lus/zoom/zrcsdk/util/ZRCNativeLogger;->access$200(Lus/zoom/zrcsdk/util/ZRCNativeLogger;ILjava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public release()V
    .locals 1

    .line 26
    iget-boolean v0, p0, Lus/zoom/zrcsdk/util/ZRCNativeLogger$ClientLogger;->inited:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 29
    iput-boolean v0, p0, Lus/zoom/zrcsdk/util/ZRCNativeLogger$ClientLogger;->inited:Z

    .line 30
    iget-object v0, p0, Lus/zoom/zrcsdk/util/ZRCNativeLogger$ClientLogger;->this$0:Lus/zoom/zrcsdk/util/ZRCNativeLogger;

    invoke-static {v0}, Lus/zoom/zrcsdk/util/ZRCNativeLogger;->access$100(Lus/zoom/zrcsdk/util/ZRCNativeLogger;)V

    return-void
.end method

.method public setNativeCallback(Lus/zoom/zrcsdk/util/ZRCNativeLogger$INativeLogCallback;)V
    .locals 0

    .line 40
    iput-object p1, p0, Lus/zoom/zrcsdk/util/ZRCNativeLogger$ClientLogger;->nativeCallback:Lus/zoom/zrcsdk/util/ZRCNativeLogger$INativeLogCallback;

    return-void
.end method
