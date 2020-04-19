.class public Lus/zoom/zrc/view/InviteByEmailFragment;
.super Landroidx/fragment/app/Fragment;
.source "InviteByEmailFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lus/zoom/zrc/view/InviteByEmailFragment$OnClickSendInvitationEmailListener;
    }
.end annotation


# instance fields
.field private mSendEmailView:Lus/zoom/zrc/view/SendEmailView;

.field private onClickSendInvitationEmailListener:Lus/zoom/zrc/view/InviteByEmailFragment$OnClickSendInvitationEmailListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lus/zoom/zrc/view/InviteByEmailFragment;)Lus/zoom/zrc/view/SendEmailView;
    .locals 0

    .line 17
    iget-object p0, p0, Lus/zoom/zrc/view/InviteByEmailFragment;->mSendEmailView:Lus/zoom/zrc/view/SendEmailView;

    return-object p0
.end method

.method static synthetic access$100(Lus/zoom/zrc/view/InviteByEmailFragment;)Lus/zoom/zrc/view/InviteByEmailFragment$OnClickSendInvitationEmailListener;
    .locals 0

    .line 17
    iget-object p0, p0, Lus/zoom/zrc/view/InviteByEmailFragment;->onClickSendInvitationEmailListener:Lus/zoom/zrc/view/InviteByEmailFragment$OnClickSendInvitationEmailListener;

    return-object p0
.end method


# virtual methods
.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    .line 35
    sget p2, Lus/zoom/zrcbox/R$layout;->invite_by_email:I

    const/4 p3, 0x0

    invoke-virtual {p1, p2, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    .line 36
    sget p2, Lus/zoom/zrcbox/R$id;->send_email_view:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lus/zoom/zrc/view/SendEmailView;

    iput-object p2, p0, Lus/zoom/zrc/view/InviteByEmailFragment;->mSendEmailView:Lus/zoom/zrc/view/SendEmailView;

    .line 37
    invoke-virtual {p0}, Lus/zoom/zrc/view/InviteByEmailFragment;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lus/zoom/androidlib/util/UIUtil;->isTablet(Landroid/content/Context;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 38
    iget-object p2, p0, Lus/zoom/zrc/view/InviteByEmailFragment;->mSendEmailView:Lus/zoom/zrc/view/SendEmailView;

    invoke-virtual {p2}, Lus/zoom/zrc/view/SendEmailView;->getRightTextView()Landroid/widget/TextView;

    move-result-object p2

    sget p3, Lus/zoom/zrcbox/R$string;->send_invitation:I

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 40
    :cond_0
    iget-object p2, p0, Lus/zoom/zrc/view/InviteByEmailFragment;->mSendEmailView:Lus/zoom/zrc/view/SendEmailView;

    invoke-virtual {p2}, Lus/zoom/zrc/view/SendEmailView;->getRightTextView()Landroid/widget/TextView;

    move-result-object p2

    sget p3, Lus/zoom/zrcbox/R$string;->send:I

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(I)V

    .line 42
    :goto_0
    iget-object p2, p0, Lus/zoom/zrc/view/InviteByEmailFragment;->mSendEmailView:Lus/zoom/zrc/view/SendEmailView;

    invoke-virtual {p2}, Lus/zoom/zrc/view/SendEmailView;->getRightTextView()Landroid/widget/TextView;

    move-result-object p2

    new-instance p3, Lus/zoom/zrc/view/InviteByEmailFragment$1;

    invoke-direct {p3, p0}, Lus/zoom/zrc/view/InviteByEmailFragment$1;-><init>(Lus/zoom/zrc/view/InviteByEmailFragment;)V

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 63
    invoke-static {}, Lus/zoom/zrc/model/AppModel;->getInstance()Lus/zoom/zrc/model/AppModel;

    move-result-object p2

    invoke-virtual {p2}, Lus/zoom/zrc/model/AppModel;->getMeetingInfo()Lus/zoom/zrcsdk/model/ZRCMeetingInfo;

    move-result-object p2

    .line 64
    iget-object p3, p0, Lus/zoom/zrc/view/InviteByEmailFragment;->mSendEmailView:Lus/zoom/zrc/view/SendEmailView;

    invoke-virtual {p2}, Lus/zoom/zrcsdk/model/ZRCMeetingInfo;->getSubjectOfInvitationEmail()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Lus/zoom/zrc/view/SendEmailView;->setEmailSubject(Ljava/lang/String;)V

    .line 65
    iget-object p3, p0, Lus/zoom/zrc/view/InviteByEmailFragment;->mSendEmailView:Lus/zoom/zrc/view/SendEmailView;

    invoke-virtual {p2}, Lus/zoom/zrcsdk/model/ZRCMeetingInfo;->getContentOfInvitationEmail()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Lus/zoom/zrc/view/SendEmailView;->setEmailContent(Ljava/lang/String;)V

    return-object p1
.end method

.method public setOnClickSendInvitationEmailListener(Lus/zoom/zrc/view/InviteByEmailFragment$OnClickSendInvitationEmailListener;)V
    .locals 0

    .line 27
    iput-object p1, p0, Lus/zoom/zrc/view/InviteByEmailFragment;->onClickSendInvitationEmailListener:Lus/zoom/zrc/view/InviteByEmailFragment$OnClickSendInvitationEmailListener;

    return-void
.end method
