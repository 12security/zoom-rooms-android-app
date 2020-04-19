.class public Lus/zoom/zrc/view/adapter/PhoneSelectedContactListAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "PhoneSelectedContactListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lus/zoom/zrc/view/adapter/PhoneSelectedContactListAdapter$ViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lus/zoom/zrc/view/adapter/PhoneSelectedContactListAdapter$ViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private context:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 28
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 29
    iput-object p1, p0, Lus/zoom/zrc/view/adapter/PhoneSelectedContactListAdapter;->context:Landroid/content/Context;

    return-void
.end method

.method private setScreenName(Ljava/lang/String;Lus/zoom/zrc/view/adapter/PhoneSelectedContactListAdapter$ViewHolder;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 77
    iget-object v0, p2, Lus/zoom/zrc/view/adapter/PhoneSelectedContactListAdapter$ViewHolder;->name:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 78
    iget-object v0, p2, Lus/zoom/zrc/view/adapter/PhoneSelectedContactListAdapter$ViewHolder;->avatarView:Lus/zoom/zrc/view/AvatarView;

    invoke-virtual {v0, p1}, Lus/zoom/zrc/view/AvatarView;->setName(Ljava/lang/CharSequence;)V

    .line 79
    iget-object p2, p2, Lus/zoom/zrc/view/adapter/PhoneSelectedContactListAdapter$ViewHolder;->avatarView:Lus/zoom/zrc/view/AvatarView;

    invoke-virtual {p2, p1}, Lus/zoom/zrc/view/AvatarView;->setBgColorSeedString(Ljava/lang/String;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 85
    invoke-static {}, Lus/zoom/zrc/model/AppModel;->getInstance()Lus/zoom/zrc/model/AppModel;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/AppModel;->getSeletedContacts()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 86
    invoke-static {}, Lus/zoom/zrc/model/AppModel;->getInstance()Lus/zoom/zrc/model/AppModel;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/AppModel;->getSeletedContacts()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 24
    check-cast p1, Lus/zoom/zrc/view/adapter/PhoneSelectedContactListAdapter$ViewHolder;

    invoke-virtual {p0, p1, p2}, Lus/zoom/zrc/view/adapter/PhoneSelectedContactListAdapter;->onBindViewHolder(Lus/zoom/zrc/view/adapter/PhoneSelectedContactListAdapter$ViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lus/zoom/zrc/view/adapter/PhoneSelectedContactListAdapter$ViewHolder;I)V
    .locals 3

    .line 56
    invoke-static {}, Lus/zoom/zrc/model/AppModel;->getInstance()Lus/zoom/zrc/model/AppModel;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/AppModel;->getSeletedContacts()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lus/zoom/zrcsdk/model/ZRCContact;

    .line 57
    invoke-virtual {p2}, Lus/zoom/zrcsdk/model/ZRCContact;->getJid()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 58
    invoke-virtual {p2}, Lus/zoom/zrcsdk/model/ZRCContact;->getScreenName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lus/zoom/zrc/view/adapter/PhoneSelectedContactListAdapter;->setScreenName(Ljava/lang/String;Lus/zoom/zrc/view/adapter/PhoneSelectedContactListAdapter$ViewHolder;)V

    goto :goto_1

    .line 60
    :cond_0
    invoke-virtual {p2}, Lus/zoom/zrcsdk/model/ZRCContact;->getFirstName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p2}, Lus/zoom/zrcsdk/model/ZRCContact;->getLastName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 63
    :cond_1
    invoke-virtual {p2}, Lus/zoom/zrcsdk/model/ZRCContact;->getScreenName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lus/zoom/zrc/view/adapter/PhoneSelectedContactListAdapter;->setScreenName(Ljava/lang/String;Lus/zoom/zrc/view/adapter/PhoneSelectedContactListAdapter$ViewHolder;)V

    goto :goto_1

    .line 61
    :cond_2
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lus/zoom/zrcsdk/model/ZRCContact;->getFirstName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lus/zoom/zrcsdk/model/ZRCContact;->getLastName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lus/zoom/zrc/view/adapter/PhoneSelectedContactListAdapter;->setScreenName(Ljava/lang/String;Lus/zoom/zrc/view/adapter/PhoneSelectedContactListAdapter$ViewHolder;)V

    .line 66
    :goto_1
    invoke-static {}, Lus/zoom/zrc/utils/AvatarLoader;->getInstance()Lus/zoom/zrc/utils/AvatarLoader;

    move-result-object v0

    invoke-virtual {p2}, Lus/zoom/zrcsdk/model/ZRCContact;->getAvatarUrl()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p1, Lus/zoom/zrc/view/adapter/PhoneSelectedContactListAdapter$ViewHolder;->avatarView:Lus/zoom/zrc/view/AvatarView;

    invoke-virtual {v0, v1, v2}, Lus/zoom/zrc/utils/AvatarLoader;->displayImage(Ljava/lang/String;Lus/zoom/zrc/view/AvatarView;)V

    .line 67
    iget-object p1, p1, Lus/zoom/zrc/view/adapter/PhoneSelectedContactListAdapter$ViewHolder;->remove:Landroid/widget/ImageView;

    new-instance v0, Lus/zoom/zrc/view/adapter/PhoneSelectedContactListAdapter$1;

    invoke-direct {v0, p0, p2}, Lus/zoom/zrc/view/adapter/PhoneSelectedContactListAdapter$1;-><init>(Lus/zoom/zrc/view/adapter/PhoneSelectedContactListAdapter;Lus/zoom/zrcsdk/model/ZRCContact;)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 24
    invoke-virtual {p0, p1, p2}, Lus/zoom/zrc/view/adapter/PhoneSelectedContactListAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lus/zoom/zrc/view/adapter/PhoneSelectedContactListAdapter$ViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lus/zoom/zrc/view/adapter/PhoneSelectedContactListAdapter$ViewHolder;
    .locals 2

    .line 34
    iget-object p2, p0, Lus/zoom/zrc/view/adapter/PhoneSelectedContactListAdapter;->context:Landroid/content/Context;

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    sget v0, Lus/zoom/zrcbox/R$layout;->phone_selected_contact_adapter:I

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 35
    new-instance p2, Lus/zoom/zrc/view/adapter/PhoneSelectedContactListAdapter$ViewHolder;

    invoke-direct {p2, p1}, Lus/zoom/zrc/view/adapter/PhoneSelectedContactListAdapter$ViewHolder;-><init>(Landroid/view/View;)V

    .line 36
    sget v0, Lus/zoom/zrcbox/R$id;->avatarView:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lus/zoom/zrc/view/AvatarView;

    iput-object v0, p2, Lus/zoom/zrc/view/adapter/PhoneSelectedContactListAdapter$ViewHolder;->avatarView:Lus/zoom/zrc/view/AvatarView;

    .line 37
    sget v0, Lus/zoom/zrcbox/R$id;->contact_remove:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p2, Lus/zoom/zrc/view/adapter/PhoneSelectedContactListAdapter$ViewHolder;->remove:Landroid/widget/ImageView;

    .line 38
    sget v0, Lus/zoom/zrcbox/R$id;->contact_name:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p2, Lus/zoom/zrc/view/adapter/PhoneSelectedContactListAdapter$ViewHolder;->name:Landroid/widget/TextView;

    .line 39
    iget-object p1, p0, Lus/zoom/zrc/view/adapter/PhoneSelectedContactListAdapter;->context:Landroid/content/Context;

    instance-of p1, p1, Lus/zoom/zrc/MeetingActivity;

    if-eqz p1, :cond_0

    .line 40
    iget-object p1, p2, Lus/zoom/zrc/view/adapter/PhoneSelectedContactListAdapter$ViewHolder;->name:Landroid/widget/TextView;

    iget-object v0, p0, Lus/zoom/zrc/view/adapter/PhoneSelectedContactListAdapter;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lus/zoom/zrcbox/R$color;->zm_black:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 41
    iget-object p1, p2, Lus/zoom/zrc/view/adapter/PhoneSelectedContactListAdapter$ViewHolder;->remove:Landroid/widget/ImageView;

    sget v0, Lus/zoom/zrcbox/R$drawable;->meeting_invite_close_bg:I

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 43
    :cond_0
    iget-object p1, p2, Lus/zoom/zrc/view/adapter/PhoneSelectedContactListAdapter$ViewHolder;->name:Landroid/widget/TextView;

    iget-object v0, p0, Lus/zoom/zrc/view/adapter/PhoneSelectedContactListAdapter;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lus/zoom/zrcbox/R$color;->zrc_white:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 44
    iget-object p1, p2, Lus/zoom/zrc/view/adapter/PhoneSelectedContactListAdapter$ViewHolder;->remove:Landroid/widget/ImageView;

    sget v0, Lus/zoom/zrcbox/R$drawable;->invite_close_bg:I

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_0
    return-object p2
.end method
