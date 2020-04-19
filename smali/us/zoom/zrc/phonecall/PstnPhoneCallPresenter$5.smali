.class Lus/zoom/zrc/phonecall/PstnPhoneCallPresenter$5;
.super Lus/zoom/androidlib/util/EventAction;
.source "PstnPhoneCallPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lus/zoom/zrc/phonecall/PstnPhoneCallPresenter;->updateThirdPartyMeeting()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lus/zoom/zrc/phonecall/PstnPhoneCallPresenter;

.field final synthetic val$thirdPartyMeeting:Lus/zoom/zrcsdk/model/ZRCThirdPartyMeeting;


# direct methods
.method constructor <init>(Lus/zoom/zrc/phonecall/PstnPhoneCallPresenter;Ljava/lang/String;Lus/zoom/zrcsdk/model/ZRCThirdPartyMeeting;)V
    .locals 0

    .line 663
    iput-object p1, p0, Lus/zoom/zrc/phonecall/PstnPhoneCallPresenter$5;->this$0:Lus/zoom/zrc/phonecall/PstnPhoneCallPresenter;

    iput-object p3, p0, Lus/zoom/zrc/phonecall/PstnPhoneCallPresenter$5;->val$thirdPartyMeeting:Lus/zoom/zrcsdk/model/ZRCThirdPartyMeeting;

    invoke-direct {p0, p2}, Lus/zoom/androidlib/util/EventAction;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run(Lus/zoom/androidlib/util/IUIElement;)V
    .locals 3

    .line 666
    iget-object p1, p0, Lus/zoom/zrc/phonecall/PstnPhoneCallPresenter$5;->this$0:Lus/zoom/zrc/phonecall/PstnPhoneCallPresenter;

    iget-object p1, p1, Lus/zoom/zrc/phonecall/PstnPhoneCallPresenter;->callView:Lus/zoom/zrc/phonecall/PhoneCallPresenter$PhoneCallView;

    const/4 v0, 0x0

    if-nez p1, :cond_0

    const-string p1, "updateThirdPartyMeeting callView is null!"

    .line 667
    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1, v0}, Lus/zoom/zrcsdk/util/ZRCLog;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 670
    :cond_0
    iget-object p1, p0, Lus/zoom/zrc/phonecall/PstnPhoneCallPresenter$5;->this$0:Lus/zoom/zrc/phonecall/PstnPhoneCallPresenter;

    invoke-static {p1}, Lus/zoom/zrc/phonecall/PstnPhoneCallPresenter;->access$100(Lus/zoom/zrc/phonecall/PstnPhoneCallPresenter;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lus/zoom/zrcsdk/util/StringUtil;->isEmptyOrNull(Ljava/lang/String;)Z

    move-result p1

    const/4 v1, 0x1

    if-nez p1, :cond_1

    .line 671
    iget-object p1, p0, Lus/zoom/zrc/phonecall/PstnPhoneCallPresenter$5;->this$0:Lus/zoom/zrc/phonecall/PstnPhoneCallPresenter;

    iget-object p1, p1, Lus/zoom/zrc/phonecall/PstnPhoneCallPresenter;->callView:Lus/zoom/zrc/phonecall/PhoneCallPresenter$PhoneCallView;

    invoke-interface {p1, v0}, Lus/zoom/zrc/phonecall/PhoneCallPresenter$PhoneCallView;->setKeypadButtonEnabled(Z)V

    goto :goto_0

    .line 672
    :cond_1
    iget-object p1, p0, Lus/zoom/zrc/phonecall/PstnPhoneCallPresenter$5;->val$thirdPartyMeeting:Lus/zoom/zrcsdk/model/ZRCThirdPartyMeeting;

    if-eqz p1, :cond_2

    .line 673
    iget-object p1, p0, Lus/zoom/zrc/phonecall/PstnPhoneCallPresenter$5;->this$0:Lus/zoom/zrc/phonecall/PstnPhoneCallPresenter;

    iget-object p1, p1, Lus/zoom/zrc/phonecall/PstnPhoneCallPresenter;->callView:Lus/zoom/zrc/phonecall/PhoneCallPresenter$PhoneCallView;

    iget-object v0, p0, Lus/zoom/zrc/phonecall/PstnPhoneCallPresenter$5;->this$0:Lus/zoom/zrc/phonecall/PstnPhoneCallPresenter;

    iget-object v2, p0, Lus/zoom/zrc/phonecall/PstnPhoneCallPresenter$5;->val$thirdPartyMeeting:Lus/zoom/zrcsdk/model/ZRCThirdPartyMeeting;

    invoke-virtual {v2}, Lus/zoom/zrcsdk/model/ZRCThirdPartyMeeting;->getServiceProvider()I

    move-result v2

    invoke-static {v0, v2}, Lus/zoom/zrc/phonecall/PstnPhoneCallPresenter;->access$200(Lus/zoom/zrc/phonecall/PstnPhoneCallPresenter;I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {p1, v0}, Lus/zoom/zrc/phonecall/PhoneCallPresenter$PhoneCallView;->setCallProvider(Ljava/lang/CharSequence;)V

    .line 674
    iget-object p1, p0, Lus/zoom/zrc/phonecall/PstnPhoneCallPresenter$5;->val$thirdPartyMeeting:Lus/zoom/zrcsdk/model/ZRCThirdPartyMeeting;

    invoke-virtual {p1}, Lus/zoom/zrcsdk/model/ZRCThirdPartyMeeting;->getMeetingNumber()Ljava/lang/String;

    move-result-object p1

    const-string v0, "-"

    invoke-static {p1, v0}, Lus/zoom/zrc/utils/Util;->formatDisplayMeetingNumber(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 675
    iget-object v0, p0, Lus/zoom/zrc/phonecall/PstnPhoneCallPresenter$5;->this$0:Lus/zoom/zrc/phonecall/PstnPhoneCallPresenter;

    iget-object v0, v0, Lus/zoom/zrc/phonecall/PstnPhoneCallPresenter;->callView:Lus/zoom/zrc/phonecall/PhoneCallPresenter$PhoneCallView;

    const-string v2, ""

    invoke-interface {v0, v2, p1}, Lus/zoom/zrc/phonecall/PhoneCallPresenter$PhoneCallView;->setCallerInfo(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 676
    iget-object p1, p0, Lus/zoom/zrc/phonecall/PstnPhoneCallPresenter$5;->this$0:Lus/zoom/zrc/phonecall/PstnPhoneCallPresenter;

    iget-object p1, p1, Lus/zoom/zrc/phonecall/PstnPhoneCallPresenter;->callView:Lus/zoom/zrc/phonecall/PhoneCallPresenter$PhoneCallView;

    invoke-interface {p1, v1}, Lus/zoom/zrc/phonecall/PhoneCallPresenter$PhoneCallView;->setKeypadButtonEnabled(Z)V

    .line 679
    :cond_2
    :goto_0
    iget-object p1, p0, Lus/zoom/zrc/phonecall/PstnPhoneCallPresenter$5;->this$0:Lus/zoom/zrc/phonecall/PstnPhoneCallPresenter;

    iget-object p1, p1, Lus/zoom/zrc/phonecall/PstnPhoneCallPresenter;->callView:Lus/zoom/zrc/phonecall/PhoneCallPresenter$PhoneCallView;

    invoke-interface {p1, v1}, Lus/zoom/zrc/phonecall/PhoneCallPresenter$PhoneCallView;->setStartMeetingButtonHidden(Z)V

    return-void
.end method
