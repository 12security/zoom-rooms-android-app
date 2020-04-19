.class Lus/zoom/zrc/phonecall/SipPhoneCallPresenter$3;
.super Ljava/lang/Object;
.source "SipPhoneCallPresenter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lus/zoom/zrc/phonecall/SipPhoneCallPresenter;->onCallTerminated(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lus/zoom/zrc/phonecall/SipPhoneCallPresenter;


# direct methods
.method constructor <init>(Lus/zoom/zrc/phonecall/SipPhoneCallPresenter;)V
    .locals 0

    .line 467
    iput-object p1, p0, Lus/zoom/zrc/phonecall/SipPhoneCallPresenter$3;->this$0:Lus/zoom/zrc/phonecall/SipPhoneCallPresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 470
    iget-object v0, p0, Lus/zoom/zrc/phonecall/SipPhoneCallPresenter$3;->this$0:Lus/zoom/zrc/phonecall/SipPhoneCallPresenter;

    invoke-virtual {v0}, Lus/zoom/zrc/phonecall/SipPhoneCallPresenter;->getSipCallViewData()Lus/zoom/zrc/phonecall/SipPhoneCallPresenter$SipCallViewData;

    move-result-object v0

    iget-object v0, v0, Lus/zoom/zrc/phonecall/SipPhoneCallPresenter$SipCallViewData;->callListViewData:Landroidx/lifecycle/MutableLiveData;

    iget-object v1, p0, Lus/zoom/zrc/phonecall/SipPhoneCallPresenter$3;->this$0:Lus/zoom/zrc/phonecall/SipPhoneCallPresenter;

    invoke-static {v1}, Lus/zoom/zrc/phonecall/SipPhoneCallPresenter;->access$300(Lus/zoom/zrc/phonecall/SipPhoneCallPresenter;)Lus/zoom/zrc/phonecall/SipPhoneCallPresenter$CallListViewData;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 471
    iget-object v0, p0, Lus/zoom/zrc/phonecall/SipPhoneCallPresenter$3;->this$0:Lus/zoom/zrc/phonecall/SipPhoneCallPresenter;

    invoke-virtual {v0}, Lus/zoom/zrc/phonecall/SipPhoneCallPresenter;->getSipCallViewData()Lus/zoom/zrc/phonecall/SipPhoneCallPresenter$SipCallViewData;

    move-result-object v0

    iget-object v0, v0, Lus/zoom/zrc/phonecall/SipPhoneCallPresenter$SipCallViewData;->isBlockingUI:Landroidx/lifecycle/MutableLiveData;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    return-void
.end method
