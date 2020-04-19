.class Lus/zoom/zrc/phonecall/SipCallFragment$27;
.super Ljava/lang/Object;
.source "SipCallFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lus/zoom/zrc/phonecall/SipCallFragment;->updateBackground(Lus/zoom/zrc/phonecall/SipPhoneCallPresenter$BackgroundCallViewData;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lus/zoom/zrc/phonecall/SipCallFragment;

.field final synthetic val$backgroundCallViewData:Lus/zoom/zrc/phonecall/SipPhoneCallPresenter$BackgroundCallViewData;


# direct methods
.method constructor <init>(Lus/zoom/zrc/phonecall/SipCallFragment;Lus/zoom/zrc/phonecall/SipPhoneCallPresenter$BackgroundCallViewData;)V
    .locals 0

    .line 651
    iput-object p1, p0, Lus/zoom/zrc/phonecall/SipCallFragment$27;->this$0:Lus/zoom/zrc/phonecall/SipCallFragment;

    iput-object p2, p0, Lus/zoom/zrc/phonecall/SipCallFragment$27;->val$backgroundCallViewData:Lus/zoom/zrc/phonecall/SipPhoneCallPresenter$BackgroundCallViewData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 654
    iget-object p1, p0, Lus/zoom/zrc/phonecall/SipCallFragment$27;->val$backgroundCallViewData:Lus/zoom/zrc/phonecall/SipPhoneCallPresenter$BackgroundCallViewData;

    invoke-virtual {p1}, Lus/zoom/zrc/phonecall/SipPhoneCallPresenter$BackgroundCallViewData;->getSingleCall()Lus/zoom/zrcsdk/model/ZRCIncomingSIPCall;

    move-result-object p1

    .line 655
    sget-object v0, Lus/zoom/zrc/phonecall/SipCallFragment;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "background call layout onClick() called with: call = ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lus/zoom/zrcsdk/util/ZRCLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 656
    iget-object v0, p0, Lus/zoom/zrc/phonecall/SipCallFragment$27;->this$0:Lus/zoom/zrc/phonecall/SipCallFragment;

    invoke-static {v0}, Lus/zoom/zrc/phonecall/SipCallFragment;->access$100(Lus/zoom/zrc/phonecall/SipCallFragment;)Lus/zoom/zrc/phonecall/SipPhoneCallPresenter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lus/zoom/zrc/phonecall/SipPhoneCallPresenter;->swapSipCall(Lus/zoom/zrcsdk/model/ZRCIncomingSIPCall;)V

    return-void
.end method
