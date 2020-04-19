.class public Lus/zoom/zrc/view/adapter/SlectedContactListAdapter;
.super Landroid/widget/BaseAdapter;
.source "SlectedContactListAdapter.java"


# instance fields
.field private context:Landroid/content/Context;

.field private selectedContacts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lus/zoom/zrcsdk/model/ZRCContact;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 25
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 26
    iput-object p1, p0, Lus/zoom/zrc/view/adapter/SlectedContactListAdapter;->context:Landroid/content/Context;

    .line 27
    invoke-static {}, Lus/zoom/zrc/model/AppModel;->getInstance()Lus/zoom/zrc/model/AppModel;

    move-result-object p1

    invoke-virtual {p1}, Lus/zoom/zrc/model/AppModel;->getSeletedContacts()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 28
    new-instance p1, Ljava/util/ArrayList;

    invoke-static {}, Lus/zoom/zrc/model/AppModel;->getInstance()Lus/zoom/zrc/model/AppModel;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/AppModel;->getSeletedContacts()Ljava/util/List;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object p1, p0, Lus/zoom/zrc/view/adapter/SlectedContactListAdapter;->selectedContacts:Ljava/util/List;

    goto :goto_0

    .line 30
    :cond_0
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lus/zoom/zrc/view/adapter/SlectedContactListAdapter;->selectedContacts:Ljava/util/List;

    :goto_0
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .line 48
    iget-object v0, p0, Lus/zoom/zrc/view/adapter/SlectedContactListAdapter;->selectedContacts:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    if-ltz p1, :cond_1

    .line 53
    invoke-virtual {p0}, Lus/zoom/zrc/view/adapter/SlectedContactListAdapter;->getCount()I

    move-result v0

    if-lt p1, v0, :cond_0

    goto :goto_0

    .line 56
    :cond_0
    iget-object v0, p0, Lus/zoom/zrc/view/adapter/SlectedContactListAdapter;->selectedContacts:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public getSelectContacts()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lus/zoom/zrcsdk/model/ZRCContact;",
            ">;"
        }
    .end annotation

    .line 35
    iget-object v0, p0, Lus/zoom/zrc/view/adapter/SlectedContactListAdapter;->selectedContacts:Ljava/util/List;

    return-object v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    const-string v1, "ItemOtherContacts"

    .line 68
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 71
    :cond_0
    iget-object p2, p0, Lus/zoom/zrc/view/adapter/SlectedContactListAdapter;->context:Landroid/content/Context;

    if-nez p2, :cond_1

    const/4 p1, 0x0

    return-object p1

    .line 74
    :cond_1
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    .line 75
    sget v1, Lus/zoom/zrcbox/R$layout;->zm_addrbook_item_other_contacts:I

    invoke-virtual {p2, v1, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    const-string p3, "ItemOtherContacts"

    .line 76
    invoke-virtual {p2, p3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 79
    :goto_0
    invoke-virtual {p0, p1}, Lus/zoom/zrc/view/adapter/SlectedContactListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lus/zoom/zrcsdk/model/ZRCContact;

    if-eqz p1, :cond_9

    .line 82
    sget p3, Lus/zoom/zrcbox/R$id;->txtTitle:I

    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    .line 83
    sget v1, Lus/zoom/zrcbox/R$id;->icon:I

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 84
    sget v2, Lus/zoom/zrcbox/R$id;->imgPresence:I

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 85
    invoke-virtual {p1}, Lus/zoom/zrcsdk/model/ZRCContact;->getScreenName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p3, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 86
    invoke-virtual {p1}, Lus/zoom/zrcsdk/model/ZRCContact;->getPresence()I

    move-result p3

    const/4 v3, 0x2

    if-ne p3, v3, :cond_2

    .line 87
    sget p3, Lus/zoom/zrcbox/R$drawable;->zm_status_dnd:I

    invoke-virtual {v2, p3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    .line 88
    :cond_2
    invoke-virtual {p1}, Lus/zoom/zrcsdk/model/ZRCContact;->getPresence()I

    move-result p3

    const/4 v3, 0x1

    if-ne p3, v3, :cond_3

    .line 89
    sget p3, Lus/zoom/zrcbox/R$drawable;->zm_status_offline:I

    invoke-virtual {v2, p3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    .line 90
    :cond_3
    invoke-virtual {p1}, Lus/zoom/zrcsdk/model/ZRCContact;->getPresence()I

    move-result p3

    if-nez p3, :cond_4

    .line 91
    sget p3, Lus/zoom/zrcbox/R$drawable;->zm_status_offline:I

    invoke-virtual {v2, p3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    .line 92
    :cond_4
    invoke-virtual {p1}, Lus/zoom/zrcsdk/model/ZRCContact;->getPresence()I

    move-result p3

    const/4 v3, 0x4

    if-ne p3, v3, :cond_5

    .line 93
    sget p3, Lus/zoom/zrcbox/R$drawable;->zm_status_dnd:I

    invoke-virtual {v2, p3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    .line 94
    :cond_5
    invoke-virtual {p1}, Lus/zoom/zrcsdk/model/ZRCContact;->getPresence()I

    move-result p3

    const/4 v3, 0x3

    if-ne p3, v3, :cond_6

    .line 95
    sget p3, Lus/zoom/zrcbox/R$drawable;->zm_status_available:I

    invoke-virtual {v2, p3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    .line 97
    :cond_6
    invoke-virtual {p1}, Lus/zoom/zrcsdk/model/ZRCContact;->isOnMobile()Z

    move-result p3

    if-eqz p3, :cond_7

    .line 98
    sget p3, Lus/zoom/zrcbox/R$drawable;->zm_status_available:I

    invoke-virtual {v2, p3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    .line 100
    :cond_7
    sget p3, Lus/zoom/zrcbox/R$drawable;->zm_status_offline:I

    invoke-virtual {v2, p3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 103
    :goto_1
    invoke-virtual {p1}, Lus/zoom/zrcsdk/model/ZRCContact;->getJid()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    const/16 p3, 0x8

    if-eqz p1, :cond_8

    .line 104
    invoke-virtual {v2, p3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_2

    .line 106
    :cond_8
    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 108
    :goto_2
    invoke-virtual {v1, p3}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_9
    return-object p2
.end method

.method public notifyDataSetChanged()V
    .locals 2

    .line 40
    invoke-static {}, Lus/zoom/zrc/model/AppModel;->getInstance()Lus/zoom/zrc/model/AppModel;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/AppModel;->getSeletedContacts()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 41
    new-instance v0, Ljava/util/ArrayList;

    invoke-static {}, Lus/zoom/zrc/model/AppModel;->getInstance()Lus/zoom/zrc/model/AppModel;

    move-result-object v1

    invoke-virtual {v1}, Lus/zoom/zrc/model/AppModel;->getSeletedContacts()Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lus/zoom/zrc/view/adapter/SlectedContactListAdapter;->selectedContacts:Ljava/util/List;

    .line 43
    :cond_0
    invoke-super {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    return-void
.end method
