.class public Lus/zoom/zrc/view/CallingCountryFragment;
.super Lus/zoom/zrc/base/app/ZRCDialogFragment;
.source "CallingCountryFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lus/zoom/zrc/view/CallingCountryFragment$CallinCountryListItemListener;
    }
.end annotation


# instance fields
.field private context:Landroid/content/Context;

.field private list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lus/zoom/zrcsdk/model/ZRCMeetingInfoCountryCode;",
            ">;"
        }
    .end annotation
.end field

.field private listView:Landroid/widget/ListView;

.field private listener:Lus/zoom/zrc/view/CallingCountryFragment$CallinCountryListItemListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Lus/zoom/zrc/base/app/ZRCDialogFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public getListener()Lus/zoom/zrc/view/CallingCountryFragment$CallinCountryListItemListener;
    .locals 1

    .line 72
    iget-object v0, p0, Lus/zoom/zrc/view/CallingCountryFragment;->listener:Lus/zoom/zrc/view/CallingCountryFragment$CallinCountryListItemListener;

    return-object v0
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 0

    .line 37
    invoke-super {p0, p1}, Lus/zoom/zrc/base/app/ZRCDialogFragment;->onAttach(Landroid/app/Activity;)V

    .line 38
    iput-object p1, p0, Lus/zoom/zrc/view/CallingCountryFragment;->context:Landroid/content/Context;

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 43
    invoke-super {p0, p1}, Lus/zoom/zrc/base/app/ZRCDialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 44
    invoke-virtual {p0}, Lus/zoom/zrc/view/CallingCountryFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "data"

    .line 45
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    iput-object p1, p0, Lus/zoom/zrc/view/CallingCountryFragment;->list:Ljava/util/List;

    const/4 p1, 0x1

    const/4 v0, 0x0

    .line 46
    invoke-virtual {p0, p1, v0}, Lus/zoom/zrc/view/CallingCountryFragment;->setStyle(II)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    .line 51
    sget p3, Lus/zoom/zrcbox/R$layout;->country_pop_up_window:I

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 52
    sget p2, Lus/zoom/zrcbox/R$id;->country_list:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ListView;

    iput-object p2, p0, Lus/zoom/zrc/view/CallingCountryFragment;->listView:Landroid/widget/ListView;

    .line 53
    iget-object p2, p0, Lus/zoom/zrc/view/CallingCountryFragment;->listView:Landroid/widget/ListView;

    invoke-virtual {p2}, Landroid/widget/ListView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    .line 54
    iget-object p3, p0, Lus/zoom/zrc/view/CallingCountryFragment;->context:Landroid/content/Context;

    invoke-static {p3}, Lus/zoom/zrc/utils/Util;->getWidth(Landroid/content/Context;)I

    move-result p3

    .line 55
    div-int/lit8 p3, p3, 0x2

    iput p3, p2, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 56
    new-instance p2, Lus/zoom/zrc/view/adapter/CallingCountryPopWindowAdapter;

    iget-object p3, p0, Lus/zoom/zrc/view/CallingCountryFragment;->context:Landroid/content/Context;

    iget-object v0, p0, Lus/zoom/zrc/view/CallingCountryFragment;->list:Ljava/util/List;

    invoke-direct {p2, p3, v0}, Lus/zoom/zrc/view/adapter/CallingCountryPopWindowAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    .line 57
    iget-object p3, p0, Lus/zoom/zrc/view/CallingCountryFragment;->listView:Landroid/widget/ListView;

    invoke-virtual {p3, p2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 58
    iget-object p2, p0, Lus/zoom/zrc/view/CallingCountryFragment;->listView:Landroid/widget/ListView;

    invoke-virtual {p2, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    return-object p1
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 64
    invoke-virtual {p0}, Lus/zoom/zrc/view/CallingCountryFragment;->dismiss()V

    .line 65
    iget-object p2, p0, Lus/zoom/zrc/view/CallingCountryFragment;->listener:Lus/zoom/zrc/view/CallingCountryFragment$CallinCountryListItemListener;

    if-eqz p2, :cond_0

    .line 66
    invoke-virtual {p1}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object p1

    .line 67
    iget-object p2, p0, Lus/zoom/zrc/view/CallingCountryFragment;->listener:Lus/zoom/zrc/view/CallingCountryFragment$CallinCountryListItemListener;

    invoke-interface {p1, p3}, Landroid/widget/Adapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lus/zoom/zrcsdk/model/ZRCMeetingInfoCountryCode;

    invoke-interface {p2, p1}, Lus/zoom/zrc/view/CallingCountryFragment$CallinCountryListItemListener;->onItemClick(Lus/zoom/zrcsdk/model/ZRCMeetingInfoCountryCode;)V

    :cond_0
    return-void
.end method

.method public setListener(Lus/zoom/zrc/view/CallingCountryFragment$CallinCountryListItemListener;)V
    .locals 0

    .line 76
    iput-object p1, p0, Lus/zoom/zrc/view/CallingCountryFragment;->listener:Lus/zoom/zrc/view/CallingCountryFragment$CallinCountryListItemListener;

    return-void
.end method
