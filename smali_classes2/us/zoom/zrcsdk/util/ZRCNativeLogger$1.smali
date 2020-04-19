.class Lus/zoom/zrcsdk/util/ZRCNativeLogger$1;
.super Ljava/lang/Object;
.source "ZRCNativeLogger.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lus/zoom/zrcsdk/util/ZRCNativeLogger;->onNativeLogCallback(ILjava/lang/String;II[B)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lus/zoom/zrcsdk/util/ZRCNativeLogger;

.field final synthetic val$file:Ljava/lang/String;

.field final synthetic val$line:I

.field final synthetic val$logContent:[B

.field final synthetic val$message_start:I

.field final synthetic val$severity:I


# direct methods
.method constructor <init>(Lus/zoom/zrcsdk/util/ZRCNativeLogger;ILjava/lang/String;II[B)V
    .locals 0

    .line 108
    iput-object p1, p0, Lus/zoom/zrcsdk/util/ZRCNativeLogger$1;->this$0:Lus/zoom/zrcsdk/util/ZRCNativeLogger;

    iput p2, p0, Lus/zoom/zrcsdk/util/ZRCNativeLogger$1;->val$severity:I

    iput-object p3, p0, Lus/zoom/zrcsdk/util/ZRCNativeLogger$1;->val$file:Ljava/lang/String;

    iput p4, p0, Lus/zoom/zrcsdk/util/ZRCNativeLogger$1;->val$line:I

    iput p5, p0, Lus/zoom/zrcsdk/util/ZRCNativeLogger$1;->val$message_start:I

    iput-object p6, p0, Lus/zoom/zrcsdk/util/ZRCNativeLogger$1;->val$logContent:[B

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .line 111
    iget-object v0, p0, Lus/zoom/zrcsdk/util/ZRCNativeLogger$1;->this$0:Lus/zoom/zrcsdk/util/ZRCNativeLogger;

    invoke-virtual {v0}, Lus/zoom/zrcsdk/util/ZRCNativeLogger;->getClientLogger()Lus/zoom/zrcsdk/util/ZRCNativeLogger$ClientLogger;

    move-result-object v0

    .line 112
    invoke-static {v0}, Lus/zoom/zrcsdk/util/ZRCNativeLogger$ClientLogger;->access$700(Lus/zoom/zrcsdk/util/ZRCNativeLogger$ClientLogger;)Lus/zoom/zrcsdk/util/ZRCNativeLogger$INativeLogCallback;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 113
    invoke-static {v0}, Lus/zoom/zrcsdk/util/ZRCNativeLogger$ClientLogger;->access$700(Lus/zoom/zrcsdk/util/ZRCNativeLogger$ClientLogger;)Lus/zoom/zrcsdk/util/ZRCNativeLogger$INativeLogCallback;

    move-result-object v2

    iget v3, p0, Lus/zoom/zrcsdk/util/ZRCNativeLogger$1;->val$severity:I

    iget-object v4, p0, Lus/zoom/zrcsdk/util/ZRCNativeLogger$1;->val$file:Ljava/lang/String;

    iget v5, p0, Lus/zoom/zrcsdk/util/ZRCNativeLogger$1;->val$line:I

    iget v6, p0, Lus/zoom/zrcsdk/util/ZRCNativeLogger$1;->val$message_start:I

    iget-object v7, p0, Lus/zoom/zrcsdk/util/ZRCNativeLogger$1;->val$logContent:[B

    invoke-interface/range {v2 .. v7}, Lus/zoom/zrcsdk/util/ZRCNativeLogger$INativeLogCallback;->onNativeLogCallback(ILjava/lang/String;II[B)V

    :cond_0
    return-void
.end method
