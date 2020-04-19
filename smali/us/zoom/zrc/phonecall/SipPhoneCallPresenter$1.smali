.class Lus/zoom/zrc/phonecall/SipPhoneCallPresenter$1;
.super Landroidx/databinding/Observable$OnPropertyChangedCallback;
.source "SipPhoneCallPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lus/zoom/zrc/phonecall/SipPhoneCallPresenter;
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

    .line 52
    iput-object p1, p0, Lus/zoom/zrc/phonecall/SipPhoneCallPresenter$1;->this$0:Lus/zoom/zrc/phonecall/SipPhoneCallPresenter;

    invoke-direct {p0}, Landroidx/databinding/Observable$OnPropertyChangedCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onPropertyChanged(Landroidx/databinding/Observable;I)V
    .locals 0

    .line 55
    sget p1, Landroidx/databinding/library/baseAdapters/BR;->sipCallInfos:I

    if-ne p2, p1, :cond_0

    .line 56
    iget-object p1, p0, Lus/zoom/zrc/phonecall/SipPhoneCallPresenter$1;->this$0:Lus/zoom/zrc/phonecall/SipPhoneCallPresenter;

    invoke-static {p1}, Lus/zoom/zrc/phonecall/SipPhoneCallPresenter;->access$000(Lus/zoom/zrc/phonecall/SipPhoneCallPresenter;)V

    goto :goto_0

    .line 57
    :cond_0
    sget p1, Landroidx/databinding/library/baseAdapters/BR;->sipMuted:I

    if-ne p2, p1, :cond_1

    .line 58
    iget-object p1, p0, Lus/zoom/zrc/phonecall/SipPhoneCallPresenter$1;->this$0:Lus/zoom/zrc/phonecall/SipPhoneCallPresenter;

    invoke-static {p1}, Lus/zoom/zrc/phonecall/SipPhoneCallPresenter;->access$100(Lus/zoom/zrc/phonecall/SipPhoneCallPresenter;)V

    goto :goto_0

    .line 59
    :cond_1
    sget p1, Landroidx/databinding/library/baseAdapters/BR;->roomInfo:I

    if-eq p1, p2, :cond_2

    sget p1, Landroidx/databinding/library/baseAdapters/BR;->userProfile:I

    if-ne p1, p2, :cond_3

    .line 60
    :cond_2
    iget-object p1, p0, Lus/zoom/zrc/phonecall/SipPhoneCallPresenter$1;->this$0:Lus/zoom/zrc/phonecall/SipPhoneCallPresenter;

    invoke-static {p1}, Lus/zoom/zrc/phonecall/SipPhoneCallPresenter;->access$200(Lus/zoom/zrc/phonecall/SipPhoneCallPresenter;)V

    :cond_3
    :goto_0
    return-void
.end method
