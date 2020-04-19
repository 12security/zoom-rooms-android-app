.class Lus/zoom/zrc/phonecall/SipCallFragment$37;
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

.field final synthetic val$callListViewData:Lus/zoom/zrc/phonecall/SipPhoneCallPresenter$CallListViewData;


# direct methods
.method constructor <init>(Lus/zoom/zrc/phonecall/SipCallFragment;Lus/zoom/zrc/phonecall/SipPhoneCallPresenter$CallListViewData;)V
    .locals 0

    .line 939
    iput-object p1, p0, Lus/zoom/zrc/phonecall/SipCallFragment$37;->this$0:Lus/zoom/zrc/phonecall/SipCallFragment;

    iput-object p2, p0, Lus/zoom/zrc/phonecall/SipCallFragment$37;->val$callListViewData:Lus/zoom/zrc/phonecall/SipPhoneCallPresenter$CallListViewData;

    invoke-direct {p0}, Lus/zoom/zrc/utils/AnimationListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 1

    .line 942
    iget-object p1, p0, Lus/zoom/zrc/phonecall/SipCallFragment$37;->this$0:Lus/zoom/zrc/phonecall/SipCallFragment;

    invoke-static {p1}, Lus/zoom/zrc/phonecall/SipCallFragment;->access$3200(Lus/zoom/zrc/phonecall/SipCallFragment;)Lus/zoom/zrc/base/widget/keypad/KeypadGridView;

    move-result-object p1

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Lus/zoom/zrc/base/widget/keypad/KeypadGridView;->setVisibility(I)V

    .line 943
    iget-object p1, p0, Lus/zoom/zrc/phonecall/SipCallFragment$37;->this$0:Lus/zoom/zrc/phonecall/SipCallFragment;

    iget-object v0, p0, Lus/zoom/zrc/phonecall/SipCallFragment$37;->val$callListViewData:Lus/zoom/zrc/phonecall/SipPhoneCallPresenter$CallListViewData;

    invoke-virtual {v0}, Lus/zoom/zrc/phonecall/SipPhoneCallPresenter$CallListViewData;->getForegroundCallViewData()Lus/zoom/zrc/phonecall/SipPhoneCallPresenter$ForegroundCallViewData;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/phonecall/SipPhoneCallPresenter$ForegroundCallViewData;->getWarmTransferStatus()I

    move-result v0

    invoke-static {p1, v0}, Lus/zoom/zrc/phonecall/SipCallFragment;->access$3500(Lus/zoom/zrc/phonecall/SipCallFragment;I)V

    return-void
.end method
