.class Lus/zoom/zrc/phonecall/SipCallFragment$34;
.super Lus/zoom/zrc/utils/AnimationListenerAdapter;
.source "SipCallFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lus/zoom/zrc/phonecall/SipCallFragment;->hideDTMFKeypad()V
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

    .line 901
    iput-object p1, p0, Lus/zoom/zrc/phonecall/SipCallFragment$34;->this$0:Lus/zoom/zrc/phonecall/SipCallFragment;

    invoke-direct {p0}, Lus/zoom/zrc/utils/AnimationListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 4

    .line 904
    iget-object p1, p0, Lus/zoom/zrc/phonecall/SipCallFragment$34;->this$0:Lus/zoom/zrc/phonecall/SipCallFragment;

    invoke-static {p1}, Lus/zoom/zrc/phonecall/SipCallFragment;->access$3000(Lus/zoom/zrc/phonecall/SipCallFragment;)Landroid/view/View;

    move-result-object p1

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 905
    iget-object p1, p0, Lus/zoom/zrc/phonecall/SipCallFragment$34;->this$0:Lus/zoom/zrc/phonecall/SipCallFragment;

    invoke-static {p1}, Lus/zoom/zrc/phonecall/SipCallFragment;->access$3300(Lus/zoom/zrc/phonecall/SipCallFragment;)Lus/zoom/zrc/phonecall/SipPhoneCallPresenter$SipCallViewData;

    move-result-object p1

    iget-object p1, p1, Lus/zoom/zrc/phonecall/SipPhoneCallPresenter$SipCallViewData;->callListViewData:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {p1}, Landroidx/lifecycle/MutableLiveData;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lus/zoom/zrc/phonecall/SipPhoneCallPresenter$CallListViewData;

    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 907
    sget-object v1, Lus/zoom/zrc/phonecall/SipCallFragment;->TAG:Ljava/lang/String;

    const-string v2, "onAnimationStart() called with: callListViewData is null"

    new-array v3, v0, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lus/zoom/zrcsdk/util/ZRCLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 909
    :cond_0
    iget-object v1, p0, Lus/zoom/zrc/phonecall/SipCallFragment$34;->this$0:Lus/zoom/zrc/phonecall/SipCallFragment;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lus/zoom/zrc/phonecall/SipPhoneCallPresenter$CallListViewData;->getBackgroundCallViewData()Lus/zoom/zrc/phonecall/SipPhoneCallPresenter$BackgroundCallViewData;

    move-result-object p1

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    :cond_1
    invoke-static {v1, v0}, Lus/zoom/zrc/phonecall/SipCallFragment;->access$3400(Lus/zoom/zrc/phonecall/SipCallFragment;Z)V

    return-void
.end method
