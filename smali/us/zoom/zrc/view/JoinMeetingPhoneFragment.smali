.class public Lus/zoom/zrc/view/JoinMeetingPhoneFragment;
.super Landroidx/fragment/app/Fragment;
.source "JoinMeetingPhoneFragment.java"

# interfaces
.implements Lus/zoom/zrc/view/JoinMeetingFragment$OnClickJoinMeetingBtnListener;
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private joinMeetingFragment:Lus/zoom/zrc/view/JoinMeetingFragment;

.field private onClickJoinMeetingBtnListener:Lus/zoom/zrc/view/JoinMeetingFragment$OnClickJoinMeetingBtnListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    return-void
.end method


# virtual methods
.method public OnClickJoinMeetingBtn(I)V
    .locals 1

    .line 58
    iget-object v0, p0, Lus/zoom/zrc/view/JoinMeetingPhoneFragment;->onClickJoinMeetingBtnListener:Lus/zoom/zrc/view/JoinMeetingFragment$OnClickJoinMeetingBtnListener;

    if-eqz v0, :cond_0

    .line 59
    invoke-interface {v0, p1}, Lus/zoom/zrc/view/JoinMeetingFragment$OnClickJoinMeetingBtnListener;->OnClickJoinMeetingBtn(I)V

    .line 61
    :cond_0
    invoke-virtual {p0}, Lus/zoom/zrc/view/JoinMeetingPhoneFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_1

    if-nez p1, :cond_1

    .line 62
    invoke-virtual {p0}, Lus/zoom/zrc/view/JoinMeetingPhoneFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->onBackPressed()V

    :cond_1
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 51
    invoke-virtual {p0}, Lus/zoom/zrc/view/JoinMeetingPhoneFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 52
    invoke-virtual {p0}, Lus/zoom/zrc/view/JoinMeetingPhoneFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->onBackPressed()V

    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 29
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 30
    invoke-virtual {p0}, Lus/zoom/zrc/view/JoinMeetingPhoneFragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    sget v0, Lus/zoom/zrcbox/R$id;->join_meeting_content:I

    invoke-virtual {p1, v0}, Landroidx/fragment/app/FragmentManager;->findFragmentById(I)Landroidx/fragment/app/Fragment;

    move-result-object p1

    check-cast p1, Lus/zoom/zrc/view/JoinMeetingFragment;

    iput-object p1, p0, Lus/zoom/zrc/view/JoinMeetingPhoneFragment;->joinMeetingFragment:Lus/zoom/zrc/view/JoinMeetingFragment;

    .line 31
    iget-object p1, p0, Lus/zoom/zrc/view/JoinMeetingPhoneFragment;->joinMeetingFragment:Lus/zoom/zrc/view/JoinMeetingFragment;

    if-nez p1, :cond_0

    .line 32
    new-instance p1, Lus/zoom/zrc/view/JoinMeetingFragment;

    invoke-direct {p1}, Lus/zoom/zrc/view/JoinMeetingFragment;-><init>()V

    iput-object p1, p0, Lus/zoom/zrc/view/JoinMeetingPhoneFragment;->joinMeetingFragment:Lus/zoom/zrc/view/JoinMeetingFragment;

    .line 34
    :cond_0
    iget-object p1, p0, Lus/zoom/zrc/view/JoinMeetingPhoneFragment;->joinMeetingFragment:Lus/zoom/zrc/view/JoinMeetingFragment;

    invoke-virtual {p1, p0}, Lus/zoom/zrc/view/JoinMeetingFragment;->setOnClickJoinMeetingBtnListener(Lus/zoom/zrc/view/JoinMeetingFragment$OnClickJoinMeetingBtnListener;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1
    .param p2    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 40
    sget p3, Lus/zoom/zrcbox/R$layout;->join_meeting_phone_fragment:I

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 41
    sget p2, Lus/zoom/zrcbox/R$id;->zrc_back:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    invoke-virtual {p2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 43
    invoke-virtual {p0}, Lus/zoom/zrc/view/JoinMeetingPhoneFragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p2

    invoke-virtual {p2}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object p2

    .line 44
    sget p3, Lus/zoom/zrcbox/R$id;->join_meeting_content:I

    iget-object v0, p0, Lus/zoom/zrc/view/JoinMeetingPhoneFragment;->joinMeetingFragment:Lus/zoom/zrc/view/JoinMeetingFragment;

    invoke-virtual {p2, p3, v0}, Landroidx/fragment/app/FragmentTransaction;->replace(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    .line 45
    invoke-virtual {p2}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    return-object p1
.end method

.method setOnClickJoinMeetingBtnListener(Lus/zoom/zrc/view/JoinMeetingFragment$OnClickJoinMeetingBtnListener;)V
    .locals 0

    .line 24
    iput-object p1, p0, Lus/zoom/zrc/view/JoinMeetingPhoneFragment;->onClickJoinMeetingBtnListener:Lus/zoom/zrc/view/JoinMeetingFragment$OnClickJoinMeetingBtnListener;

    return-void
.end method
