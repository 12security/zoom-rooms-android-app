.class public Lus/zoom/zrc/view/InviteByContactsFragment;
.super Lus/zoom/zrc/view/IMAddrBookListFragment;
.source "InviteByContactsFragment.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Lus/zoom/zrc/view/IMAddrBookListFragment;-><init>()V

    return-void
.end method


# virtual methods
.method protected clickMeetingNowBtn()I
    .locals 7

    .line 23
    iget-object v0, p0, Lus/zoom/zrc/view/InviteByContactsFragment;->selectedAdapter:Lus/zoom/zrc/view/adapter/SlectedContactListAdapter;

    invoke-virtual {v0}, Lus/zoom/zrc/view/adapter/SlectedContactListAdapter;->getCount()I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_3

    .line 24
    iget-object v0, p0, Lus/zoom/zrc/view/InviteByContactsFragment;->selectedAdapter:Lus/zoom/zrc/view/adapter/SlectedContactListAdapter;

    invoke-virtual {v0}, Lus/zoom/zrc/view/adapter/SlectedContactListAdapter;->getSelectContacts()Ljava/util/List;

    move-result-object v0

    .line 25
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 26
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    const/4 v4, 0x0

    .line 27
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_1

    .line 28
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lus/zoom/zrcsdk/model/ZRCContact;

    .line 29
    invoke-virtual {v5}, Lus/zoom/zrcsdk/model/ZRCContact;->getJid()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 30
    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 32
    :cond_0
    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 34
    :cond_1
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 35
    invoke-static {}, Lus/zoom/zrcsdk/ZRCSdk;->getInstance()Lus/zoom/zrcsdk/ZRCSdk;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrcsdk/ZRCSdk;->getConfApp()Lus/zoom/zrcsdk/ConfApp;

    move-result-object v0

    invoke-virtual {v0, v2}, Lus/zoom/zrcsdk/ConfApp;->inviteAttendees(Ljava/util/List;)I

    move-result v0

    move v1, v0

    .line 36
    :cond_2
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_3

    .line 37
    invoke-static {}, Lus/zoom/zrcsdk/ZRCSdk;->getInstance()Lus/zoom/zrcsdk/ZRCSdk;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrcsdk/ZRCSdk;->getPTApp()Lus/zoom/zrcsdk/PTApp;

    move-result-object v0

    invoke-virtual {v0, v3}, Lus/zoom/zrcsdk/PTApp;->inviteLegacyRoomSystems(Ljava/util/List;)I

    move-result v1

    :cond_3
    return v1
.end method

.method protected getMeetingNowBtnText()Ljava/lang/String;
    .locals 2

    .line 17
    invoke-virtual {p0}, Lus/zoom/zrc/view/InviteByContactsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lus/zoom/zrcbox/R$string;->invite:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected hideDurationSeekBar()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected setMeetingNowBtnStatus()V
    .locals 2

    .line 50
    iget-object v0, p0, Lus/zoom/zrc/view/InviteByContactsFragment;->selectedAdapter:Lus/zoom/zrc/view/adapter/SlectedContactListAdapter;

    invoke-virtual {v0}, Lus/zoom/zrc/view/adapter/SlectedContactListAdapter;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 51
    iget-object v0, p0, Lus/zoom/zrc/view/InviteByContactsFragment;->mMeetingNow:Landroid/widget/Button;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 52
    iget-object v0, p0, Lus/zoom/zrc/view/InviteByContactsFragment;->mMeetingNow:Landroid/widget/Button;

    const-string v1, "#000000"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    goto :goto_0

    .line 55
    :cond_0
    iget-object v0, p0, Lus/zoom/zrc/view/InviteByContactsFragment;->mMeetingNow:Landroid/widget/Button;

    const-string v1, "#b5aaa0"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    .line 56
    iget-object v0, p0, Lus/zoom/zrc/view/InviteByContactsFragment;->mMeetingNow:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    :goto_0
    return-void
.end method
