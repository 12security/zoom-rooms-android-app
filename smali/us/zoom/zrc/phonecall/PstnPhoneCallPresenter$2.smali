.class Lus/zoom/zrc/phonecall/PstnPhoneCallPresenter$2;
.super Lus/zoom/androidlib/util/EventAction;
.source "PstnPhoneCallPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lus/zoom/zrc/phonecall/PstnPhoneCallPresenter;->onParticipantListChanged()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lus/zoom/zrc/phonecall/PstnPhoneCallPresenter;

.field final synthetic val$callOutParticipants:Ljava/util/List;


# direct methods
.method constructor <init>(Lus/zoom/zrc/phonecall/PstnPhoneCallPresenter;Ljava/lang/String;Ljava/util/List;)V
    .locals 0

    .line 252
    iput-object p1, p0, Lus/zoom/zrc/phonecall/PstnPhoneCallPresenter$2;->this$0:Lus/zoom/zrc/phonecall/PstnPhoneCallPresenter;

    iput-object p3, p0, Lus/zoom/zrc/phonecall/PstnPhoneCallPresenter$2;->val$callOutParticipants:Ljava/util/List;

    invoke-direct {p0, p2}, Lus/zoom/androidlib/util/EventAction;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run(Lus/zoom/androidlib/util/IUIElement;)V
    .locals 1

    .line 255
    iget-object p1, p0, Lus/zoom/zrc/phonecall/PstnPhoneCallPresenter$2;->this$0:Lus/zoom/zrc/phonecall/PstnPhoneCallPresenter;

    iget-object p1, p1, Lus/zoom/zrc/phonecall/PstnPhoneCallPresenter;->callView:Lus/zoom/zrc/phonecall/PhoneCallPresenter$PhoneCallView;

    if-eqz p1, :cond_1

    .line 256
    iget-object p1, p0, Lus/zoom/zrc/phonecall/PstnPhoneCallPresenter$2;->this$0:Lus/zoom/zrc/phonecall/PstnPhoneCallPresenter;

    iget-object p1, p1, Lus/zoom/zrc/phonecall/PstnPhoneCallPresenter;->callView:Lus/zoom/zrc/phonecall/PhoneCallPresenter$PhoneCallView;

    iget-object v0, p0, Lus/zoom/zrc/phonecall/PstnPhoneCallPresenter$2;->val$callOutParticipants:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-interface {p1, v0}, Lus/zoom/zrc/phonecall/PhoneCallPresenter$PhoneCallView;->setKeypadButtonEnabled(Z)V

    :cond_1
    return-void
.end method
