.class Lus/zoom/zrc/phonecall/PstnPhoneCallPresenter$4;
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

    .line 276
    iput-object p1, p0, Lus/zoom/zrc/phonecall/PstnPhoneCallPresenter$4;->this$0:Lus/zoom/zrc/phonecall/PstnPhoneCallPresenter;

    iput-object p3, p0, Lus/zoom/zrc/phonecall/PstnPhoneCallPresenter$4;->val$callOutParticipants:Ljava/util/List;

    invoke-direct {p0, p2}, Lus/zoom/androidlib/util/EventAction;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run(Lus/zoom/androidlib/util/IUIElement;)V
    .locals 1

    .line 279
    iget-object p1, p0, Lus/zoom/zrc/phonecall/PstnPhoneCallPresenter$4;->this$0:Lus/zoom/zrc/phonecall/PstnPhoneCallPresenter;

    iget-object p1, p1, Lus/zoom/zrc/phonecall/PstnPhoneCallPresenter;->callView:Lus/zoom/zrc/phonecall/PhoneCallPresenter$PhoneCallView;

    if-eqz p1, :cond_0

    .line 280
    iget-object p1, p0, Lus/zoom/zrc/phonecall/PstnPhoneCallPresenter$4;->val$callOutParticipants:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lus/zoom/zrcsdk/model/ZRCParticipant;

    .line 281
    iget-object v0, p0, Lus/zoom/zrc/phonecall/PstnPhoneCallPresenter$4;->this$0:Lus/zoom/zrc/phonecall/PstnPhoneCallPresenter;

    iget-object v0, v0, Lus/zoom/zrc/phonecall/PstnPhoneCallPresenter;->callView:Lus/zoom/zrc/phonecall/PhoneCallPresenter$PhoneCallView;

    invoke-interface {v0, p1}, Lus/zoom/zrc/phonecall/PhoneCallPresenter$PhoneCallView;->setCallerParticipant(Lus/zoom/zrcsdk/model/ZRCParticipant;)V

    :cond_0
    return-void
.end method
