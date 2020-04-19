.class Lus/zoom/zrc/phonecall/PhoneCallPresenter$2;
.super Landroidx/databinding/Observable$OnPropertyChangedCallback;
.source "PhoneCallPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lus/zoom/zrc/phonecall/PhoneCallPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lus/zoom/zrc/phonecall/PhoneCallPresenter;


# direct methods
.method constructor <init>(Lus/zoom/zrc/phonecall/PhoneCallPresenter;)V
    .locals 0

    .line 85
    iput-object p1, p0, Lus/zoom/zrc/phonecall/PhoneCallPresenter$2;->this$0:Lus/zoom/zrc/phonecall/PhoneCallPresenter;

    invoke-direct {p0}, Landroidx/databinding/Observable$OnPropertyChangedCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onPropertyChanged(Landroidx/databinding/Observable;I)V
    .locals 4

    .line 88
    iget-object p1, p0, Lus/zoom/zrc/phonecall/PhoneCallPresenter$2;->this$0:Lus/zoom/zrc/phonecall/PhoneCallPresenter;

    invoke-virtual {p1}, Lus/zoom/zrc/phonecall/PhoneCallPresenter;->isUIActive()Z

    move-result p1

    if-nez p1, :cond_0

    .line 90
    iget-object v0, p0, Lus/zoom/zrc/phonecall/PhoneCallPresenter$2;->this$0:Lus/zoom/zrc/phonecall/PhoneCallPresenter;

    new-instance v1, Lus/zoom/zrc/phonecall/PhoneCallPresenter$2$1;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "PhonePresenter_propertyChanged_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, p0, v2, p2}, Lus/zoom/zrc/phonecall/PhoneCallPresenter$2$1;-><init>(Lus/zoom/zrc/phonecall/PhoneCallPresenter$2;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Lus/zoom/zrc/phonecall/PhoneCallPresenter;->dispatchEventAction(Lus/zoom/androidlib/util/EventAction;)V

    .line 97
    :cond_0
    iget-object v0, p0, Lus/zoom/zrc/phonecall/PhoneCallPresenter$2;->this$0:Lus/zoom/zrc/phonecall/PhoneCallPresenter;

    invoke-virtual {v0, p2}, Lus/zoom/zrc/phonecall/PhoneCallPresenter;->onReceivePropertyChanged(I)V

    if-eqz p1, :cond_1

    .line 99
    iget-object p1, p0, Lus/zoom/zrc/phonecall/PhoneCallPresenter$2;->this$0:Lus/zoom/zrc/phonecall/PhoneCallPresenter;

    invoke-virtual {p1, p2}, Lus/zoom/zrc/phonecall/PhoneCallPresenter;->onPropertyChangedInActive(I)V

    :cond_1
    return-void
.end method
