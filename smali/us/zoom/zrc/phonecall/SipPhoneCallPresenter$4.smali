.class Lus/zoom/zrc/phonecall/SipPhoneCallPresenter$4;
.super Ljava/lang/Object;
.source "SipPhoneCallPresenter.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lus/zoom/zrc/phonecall/SipPhoneCallPresenter;->getBackgroundCalls()Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lus/zoom/zrc/phonecall/PhoneListItemData;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lus/zoom/zrc/phonecall/SipPhoneCallPresenter;


# direct methods
.method constructor <init>(Lus/zoom/zrc/phonecall/SipPhoneCallPresenter;)V
    .locals 0

    .line 649
    iput-object p1, p0, Lus/zoom/zrc/phonecall/SipPhoneCallPresenter$4;->this$0:Lus/zoom/zrc/phonecall/SipPhoneCallPresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 649
    check-cast p1, Lus/zoom/zrc/phonecall/PhoneListItemData;

    check-cast p2, Lus/zoom/zrc/phonecall/PhoneListItemData;

    invoke-virtual {p0, p1, p2}, Lus/zoom/zrc/phonecall/SipPhoneCallPresenter$4;->compare(Lus/zoom/zrc/phonecall/PhoneListItemData;Lus/zoom/zrc/phonecall/PhoneListItemData;)I

    move-result p1

    return p1
.end method

.method public compare(Lus/zoom/zrc/phonecall/PhoneListItemData;Lus/zoom/zrc/phonecall/PhoneListItemData;)I
    .locals 3
    .param p1    # Lus/zoom/zrc/phonecall/PhoneListItemData;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lus/zoom/zrc/phonecall/PhoneListItemData;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 653
    iget-object p1, p1, Lus/zoom/zrc/phonecall/PhoneListItemData;->call:Lus/zoom/zrcsdk/model/ZRCIncomingSIPCall;

    invoke-virtual {p1}, Lus/zoom/zrcsdk/model/ZRCIncomingSIPCall;->getCallStartSecond()J

    move-result-wide v0

    iget-object p1, p2, Lus/zoom/zrc/phonecall/PhoneListItemData;->call:Lus/zoom/zrcsdk/model/ZRCIncomingSIPCall;

    invoke-virtual {p1}, Lus/zoom/zrcsdk/model/ZRCIncomingSIPCall;->getCallStartSecond()J

    move-result-wide p1

    sub-long/2addr v0, p1

    const-wide/16 p1, 0x0

    cmp-long v2, v0, p1

    if-lez v2, :cond_0

    const/4 p1, -0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    :goto_0
    return p1
.end method
