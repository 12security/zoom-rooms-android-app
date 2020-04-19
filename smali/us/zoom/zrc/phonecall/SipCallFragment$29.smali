.class Lus/zoom/zrc/phonecall/SipCallFragment$29;
.super Ljava/lang/Object;
.source "SipCallFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lus/zoom/zrc/phonecall/SipCallFragment;->startStatusTimer()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lus/zoom/zrc/phonecall/SipCallFragment;


# direct methods
.method constructor <init>(Lus/zoom/zrc/phonecall/SipCallFragment;)V
    .locals 0

    .line 776
    iput-object p1, p0, Lus/zoom/zrc/phonecall/SipCallFragment$29;->this$0:Lus/zoom/zrc/phonecall/SipCallFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 779
    iget-object v0, p0, Lus/zoom/zrc/phonecall/SipCallFragment$29;->this$0:Lus/zoom/zrc/phonecall/SipCallFragment;

    invoke-static {v0}, Lus/zoom/zrc/phonecall/SipCallFragment;->access$2500(Lus/zoom/zrc/phonecall/SipCallFragment;)Lus/zoom/zrcsdk/model/ZRCIncomingSIPCall;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 782
    :cond_0
    iget-object v0, p0, Lus/zoom/zrc/phonecall/SipCallFragment$29;->this$0:Lus/zoom/zrc/phonecall/SipCallFragment;

    invoke-static {v0}, Lus/zoom/zrc/phonecall/SipCallFragment;->access$2500(Lus/zoom/zrc/phonecall/SipCallFragment;)Lus/zoom/zrcsdk/model/ZRCIncomingSIPCall;

    move-result-object v1

    invoke-virtual {v1}, Lus/zoom/zrcsdk/model/ZRCIncomingSIPCall;->getElapsedSecond()J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    mul-long v1, v1, v3

    invoke-static {v0, v1, v2}, Lus/zoom/zrc/phonecall/SipCallFragment;->access$2600(Lus/zoom/zrc/phonecall/SipCallFragment;J)V

    .line 783
    iget-object v0, p0, Lus/zoom/zrc/phonecall/SipCallFragment$29;->this$0:Lus/zoom/zrc/phonecall/SipCallFragment;

    invoke-static {v0}, Lus/zoom/zrc/phonecall/SipCallFragment;->access$2700(Lus/zoom/zrc/phonecall/SipCallFragment;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p0, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
