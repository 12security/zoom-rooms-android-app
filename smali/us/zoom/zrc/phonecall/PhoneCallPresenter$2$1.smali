.class Lus/zoom/zrc/phonecall/PhoneCallPresenter$2$1;
.super Lus/zoom/androidlib/util/EventAction;
.source "PhoneCallPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lus/zoom/zrc/phonecall/PhoneCallPresenter$2;->onPropertyChanged(Landroidx/databinding/Observable;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lus/zoom/zrc/phonecall/PhoneCallPresenter$2;

.field final synthetic val$propertyId:I


# direct methods
.method constructor <init>(Lus/zoom/zrc/phonecall/PhoneCallPresenter$2;Ljava/lang/String;I)V
    .locals 0

    .line 90
    iput-object p1, p0, Lus/zoom/zrc/phonecall/PhoneCallPresenter$2$1;->this$1:Lus/zoom/zrc/phonecall/PhoneCallPresenter$2;

    iput p3, p0, Lus/zoom/zrc/phonecall/PhoneCallPresenter$2$1;->val$propertyId:I

    invoke-direct {p0, p2}, Lus/zoom/androidlib/util/EventAction;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run(Lus/zoom/androidlib/util/IUIElement;)V
    .locals 1

    .line 93
    iget-object p1, p0, Lus/zoom/zrc/phonecall/PhoneCallPresenter$2$1;->this$1:Lus/zoom/zrc/phonecall/PhoneCallPresenter$2;

    iget-object p1, p1, Lus/zoom/zrc/phonecall/PhoneCallPresenter$2;->this$0:Lus/zoom/zrc/phonecall/PhoneCallPresenter;

    iget v0, p0, Lus/zoom/zrc/phonecall/PhoneCallPresenter$2$1;->val$propertyId:I

    invoke-virtual {p1, v0}, Lus/zoom/zrc/phonecall/PhoneCallPresenter;->onPropertyChangedInActive(I)V

    return-void
.end method
