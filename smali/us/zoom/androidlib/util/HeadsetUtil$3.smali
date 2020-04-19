.class Lus/zoom/androidlib/util/HeadsetUtil$3;
.super Ljava/lang/Object;
.source "HeadsetUtil.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lus/zoom/androidlib/util/HeadsetUtil;->postNotifyHeadsetConnectionChanged()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lus/zoom/androidlib/util/HeadsetUtil;


# direct methods
.method constructor <init>(Lus/zoom/androidlib/util/HeadsetUtil;)V
    .locals 0

    .line 367
    iput-object p1, p0, Lus/zoom/androidlib/util/HeadsetUtil$3;->this$0:Lus/zoom/androidlib/util/HeadsetUtil;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 370
    iget-object v0, p0, Lus/zoom/androidlib/util/HeadsetUtil$3;->this$0:Lus/zoom/androidlib/util/HeadsetUtil;

    invoke-static {v0}, Lus/zoom/androidlib/util/HeadsetUtil;->access$900(Lus/zoom/androidlib/util/HeadsetUtil;)Z

    move-result v1

    iget-object v2, p0, Lus/zoom/androidlib/util/HeadsetUtil$3;->this$0:Lus/zoom/androidlib/util/HeadsetUtil;

    invoke-static {v2}, Lus/zoom/androidlib/util/HeadsetUtil;->access$700(Lus/zoom/androidlib/util/HeadsetUtil;)Z

    move-result v2

    invoke-static {v0, v1, v2}, Lus/zoom/androidlib/util/HeadsetUtil;->access$1000(Lus/zoom/androidlib/util/HeadsetUtil;ZZ)V

    return-void
.end method
