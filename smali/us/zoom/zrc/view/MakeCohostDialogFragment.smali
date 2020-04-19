.class public Lus/zoom/zrc/view/MakeCohostDialogFragment;
.super Lus/zoom/zrc/base/app/ZRCDialogFragment;
.source "MakeCohostDialogFragment.java"

# interfaces
.implements Lus/zoom/zrc/view/model/IShouldDismissWhenBindParticipantInSilent;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lus/zoom/zrc/view/MakeCohostDialogFragment$OnClickListener;
    }
.end annotation


# instance fields
.field private positiveListener:Lus/zoom/zrc/view/MakeCohostDialogFragment$OnClickListener;

.field private submit:Landroid/widget/TextView;

.field private submitText:Ljava/lang/String;

.field private title:Landroid/widget/TextView;

.field private titleStr:Ljava/lang/String;

.field userId:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 20
    invoke-direct {p0}, Lus/zoom/zrc/base/app/ZRCDialogFragment;-><init>()V

    const/4 v0, 0x0

    .line 26
    iput-object v0, p0, Lus/zoom/zrc/view/MakeCohostDialogFragment;->titleStr:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lus/zoom/zrc/view/MakeCohostDialogFragment;)Lus/zoom/zrc/view/MakeCohostDialogFragment$OnClickListener;
    .locals 0

    .line 20
    iget-object p0, p0, Lus/zoom/zrc/view/MakeCohostDialogFragment;->positiveListener:Lus/zoom/zrc/view/MakeCohostDialogFragment$OnClickListener;

    return-object p0
.end method

.method private onBindParticipantChange()V
    .locals 5

    .line 103
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/Model;->getParticipantList()Lus/zoom/zrc/model/ZRCParticipantList;

    move-result-object v0

    iget v1, p0, Lus/zoom/zrc/view/MakeCohostDialogFragment;->userId:I

    invoke-virtual {v0, v1}, Lus/zoom/zrc/model/ZRCParticipantList;->getParticipantByUserId(I)Lus/zoom/zrcsdk/model/ZRCParticipant;

    move-result-object v0

    if-nez v0, :cond_0

    .line 105
    invoke-virtual {p0}, Lus/zoom/zrc/view/MakeCohostDialogFragment;->dismiss()V

    return-void

    .line 108
    :cond_0
    invoke-virtual {v0}, Lus/zoom/zrcsdk/model/ZRCParticipant;->isHostOrCoHost()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 109
    invoke-virtual {p0}, Lus/zoom/zrc/view/MakeCohostDialogFragment;->dismiss()V

    return-void

    .line 113
    :cond_1
    iget-object v1, p0, Lus/zoom/zrc/view/MakeCohostDialogFragment;->title:Landroid/widget/TextView;

    sget v2, Lus/zoom/zrcbox/R$string;->confirm_assign_cohost:I

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {v0}, Lus/zoom/zrcsdk/model/ZRCParticipant;->getUserName()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v4

    invoke-virtual {p0, v2, v3}, Lus/zoom/zrc/view/MakeCohostDialogFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method public getBindUserId()I
    .locals 1

    .line 31
    iget v0, p0, Lus/zoom/zrc/view/MakeCohostDialogFragment;->userId:I

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 52
    invoke-super {p0, p1}, Lus/zoom/zrc/base/app/ZRCDialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 53
    invoke-virtual {p0}, Lus/zoom/zrc/view/MakeCohostDialogFragment;->getRetainFragment()Lus/zoom/zrc/base/app/ZRCRetainFragment;

    move-result-object p1

    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {p1, v0}, Lus/zoom/zrc/base/app/ZRCRetainFragment;->registerOnPropertyChangedCallback(Landroidx/databinding/BaseObservable;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1
    .param p1    # Landroid/view/LayoutInflater;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
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

    const/4 p3, 0x0

    .line 59
    invoke-virtual {p0, p3}, Lus/zoom/zrc/view/MakeCohostDialogFragment;->setCanceledOnTouchOutside(Z)V

    .line 60
    invoke-virtual {p0, p3}, Lus/zoom/zrc/view/MakeCohostDialogFragment;->setCancelable(Z)V

    const/4 v0, 0x1

    .line 61
    invoke-virtual {p0, v0}, Lus/zoom/zrc/view/MakeCohostDialogFragment;->requestWindowFeature(I)V

    .line 62
    sget v0, Lus/zoom/zrcbox/R$layout;->participant_remove_fragment:I

    invoke-virtual {p1, v0, p2, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 63
    sget p2, Lus/zoom/zrcbox/R$id;->user_name:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lus/zoom/zrc/view/MakeCohostDialogFragment;->title:Landroid/widget/TextView;

    .line 64
    iget-object p2, p0, Lus/zoom/zrc/view/MakeCohostDialogFragment;->titleStr:Ljava/lang/String;

    if-eqz p2, :cond_0

    .line 65
    iget-object p3, p0, Lus/zoom/zrc/view/MakeCohostDialogFragment;->title:Landroid/widget/TextView;

    invoke-virtual {p3, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 67
    :cond_0
    sget p2, Lus/zoom/zrcbox/R$id;->user_confirm_txt:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lus/zoom/zrc/view/MakeCohostDialogFragment;->submit:Landroid/widget/TextView;

    .line 68
    sget p2, Lus/zoom/zrcbox/R$id;->user_cancel:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    .line 70
    iget-object p3, p0, Lus/zoom/zrc/view/MakeCohostDialogFragment;->submitText:Ljava/lang/String;

    if-eqz p3, :cond_1

    .line 71
    iget-object v0, p0, Lus/zoom/zrc/view/MakeCohostDialogFragment;->submit:Landroid/widget/TextView;

    invoke-virtual {v0, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 74
    :cond_1
    iget-object p3, p0, Lus/zoom/zrc/view/MakeCohostDialogFragment;->submit:Landroid/widget/TextView;

    new-instance v0, Lus/zoom/zrc/view/MakeCohostDialogFragment$1;

    invoke-direct {v0, p0}, Lus/zoom/zrc/view/MakeCohostDialogFragment$1;-><init>(Lus/zoom/zrc/view/MakeCohostDialogFragment;)V

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 84
    new-instance p3, Lus/zoom/zrc/view/MakeCohostDialogFragment$2;

    invoke-direct {p3, p0}, Lus/zoom/zrc/view/MakeCohostDialogFragment$2;-><init>(Lus/zoom/zrc/view/MakeCohostDialogFragment;)V

    invoke-virtual {p2, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object p1
.end method

.method public onReceivedPropertyChangedCallbackInActive(Landroidx/databinding/Observable;I)V
    .locals 0

    .line 44
    invoke-super {p0, p1, p2}, Lus/zoom/zrc/base/app/ZRCDialogFragment;->onReceivedPropertyChangedCallbackInActive(Landroidx/databinding/Observable;I)V

    .line 45
    sget p1, Landroidx/databinding/library/baseAdapters/BR;->participantList:I

    if-ne p2, p1, :cond_0

    .line 46
    invoke-direct {p0}, Lus/zoom/zrc/view/MakeCohostDialogFragment;->onBindParticipantChange()V

    :cond_0
    return-void
.end method

.method public setPositiveButton(Ljava/lang/String;Lus/zoom/zrc/view/MakeCohostDialogFragment$OnClickListener;)V
    .locals 0

    .line 98
    iput-object p1, p0, Lus/zoom/zrc/view/MakeCohostDialogFragment;->submitText:Ljava/lang/String;

    .line 99
    iput-object p2, p0, Lus/zoom/zrc/view/MakeCohostDialogFragment;->positiveListener:Lus/zoom/zrc/view/MakeCohostDialogFragment$OnClickListener;

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    .line 94
    iput-object p1, p0, Lus/zoom/zrc/view/MakeCohostDialogFragment;->titleStr:Ljava/lang/String;

    return-void
.end method

.method public setUserId(I)V
    .locals 0

    .line 35
    iput p1, p0, Lus/zoom/zrc/view/MakeCohostDialogFragment;->userId:I

    return-void
.end method
