.class public Lus/zoom/zrc/view/SipDialFragment;
.super Lus/zoom/zrc/view/BaseDialFragment;
.source "SipDialFragment.java"

# interfaces
.implements Lus/zoom/zrc/view/DialKeyboardView$OnClickDialBtnListener;


# static fields
.field static final TAG:Ljava/lang/String; = "SipDialFragment"


# instance fields
.field protected dialKeyboardView:Lus/zoom/zrc/view/DialKeyboardView;

.field private dialNumberContent:Landroid/view/View;

.field private dialNumberDivider:Landroid/view/View;

.field private dialNumberFirstPartView:Landroid/widget/TextView;

.field private dialNumberSecondPartView:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 38
    invoke-direct {p0}, Lus/zoom/zrc/view/BaseDialFragment;-><init>()V

    return-void
.end method

.method private decideTheme()I
    .locals 1

    .line 210
    sget v0, Lus/zoom/zrcbox/R$style;->ZRCTheme_DialFragment_Dark:I

    return v0
.end method

.method private onUpdateSipService()V
    .locals 1

    .line 118
    invoke-direct {p0}, Lus/zoom/zrc/view/SipDialFragment;->updateDialNumberViews()V

    .line 120
    iget-object v0, p0, Lus/zoom/zrc/view/SipDialFragment;->dialKeyboardView:Lus/zoom/zrc/view/DialKeyboardView;

    if-eqz v0, :cond_0

    .line 121
    invoke-virtual {v0}, Lus/zoom/zrc/view/DialKeyboardView;->updateSipServiceStatus()V

    :cond_0
    return-void
.end method

.method private updateDialNumberViews()V
    .locals 8

    .line 143
    iget-object v0, p0, Lus/zoom/zrc/view/SipDialFragment;->dialNumberFirstPartView:Landroid/widget/TextView;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lus/zoom/zrc/view/SipDialFragment;->dialNumberSecondPartView:Landroid/widget/TextView;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lus/zoom/zrc/view/SipDialFragment;->dialNumberDivider:Landroid/view/View;

    if-nez v0, :cond_0

    goto/16 :goto_3

    .line 149
    :cond_0
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/Model;->getSipService()Lus/zoom/zrcsdk/model/ZRCSipService;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 151
    invoke-virtual {v0}, Lus/zoom/zrcsdk/model/ZRCSipService;->getSipServiceStatus()I

    move-result v1

    const/4 v2, 0x4

    const/16 v3, 0x8

    if-eq v2, v1, :cond_6

    .line 152
    invoke-virtual {v0}, Lus/zoom/zrcsdk/model/ZRCSipService;->getSipServiceStatus()I

    move-result v1

    if-nez v1, :cond_1

    goto/16 :goto_1

    :cond_1
    const/4 v1, 0x5

    .line 156
    invoke-virtual {v0}, Lus/zoom/zrcsdk/model/ZRCSipService;->getSipServiceStatus()I

    move-result v2

    const/4 v4, 0x0

    if-ne v1, v2, :cond_2

    .line 157
    iget-object v1, p0, Lus/zoom/zrc/view/SipDialFragment;->dialNumberFirstPartView:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 158
    iget-object v1, p0, Lus/zoom/zrc/view/SipDialFragment;->dialNumberDivider:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 159
    iget-object v1, p0, Lus/zoom/zrc/view/SipDialFragment;->dialNumberSecondPartView:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 160
    iget-object v1, p0, Lus/zoom/zrc/view/SipDialFragment;->dialNumberSecondPartView:Landroid/widget/TextView;

    invoke-virtual {v0}, Lus/zoom/zrcsdk/model/ZRCSipService;->getResponseDescription()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 162
    :cond_2
    invoke-virtual {v0}, Lus/zoom/zrcsdk/model/ZRCSipService;->getCloudPBXServiceInfo()Lus/zoom/zrcsdk/model/ZRCCloudPBXServiceInfo;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 164
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 165
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 166
    sget v5, Lus/zoom/zrcbox/R$string;->ext:I

    invoke-virtual {p0, v5}, Lus/zoom/zrc/view/SipDialFragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lus/zoom/zrcsdk/model/ZRCCloudPBXServiceInfo;->getExtension()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 167
    iget-object v5, p0, Lus/zoom/zrc/view/SipDialFragment;->dialNumberFirstPartView:Landroid/widget/TextView;

    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 168
    iget-object v5, p0, Lus/zoom/zrc/view/SipDialFragment;->dialNumberFirstPartView:Landroid/widget/TextView;

    invoke-virtual {v5, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 170
    invoke-virtual {v1}, Lus/zoom/zrcsdk/model/ZRCCloudPBXServiceInfo;->getExtension()Ljava/lang/String;

    move-result-object v2

    .line 172
    sget v5, Lus/zoom/zrcbox/R$string;->accessibility_your_ext:I

    const/4 v6, 0x1

    new-array v7, v6, [Ljava/lang/Object;

    invoke-static {v2}, Lus/zoom/zrc/phonecall/PhoneCallNumberUtils;->getContentDescriptionForNumber(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v7, v4

    invoke-virtual {p0, v5, v7}, Lus/zoom/zrc/view/SipDialFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 174
    invoke-virtual {v1}, Lus/zoom/zrcsdk/model/ZRCCloudPBXServiceInfo;->getDirectNumberFormat()Ljava/util/List;

    move-result-object v2

    .line 175
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 176
    invoke-virtual {v1}, Lus/zoom/zrcsdk/model/ZRCCloudPBXServiceInfo;->getDirectNumber()Ljava/util/List;

    move-result-object v2

    :cond_3
    if-eqz v2, :cond_4

    .line 178
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_4

    .line 179
    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 180
    iget-object v2, p0, Lus/zoom/zrc/view/SipDialFragment;->dialNumberDivider:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 181
    iget-object v2, p0, Lus/zoom/zrc/view/SipDialFragment;->dialNumberSecondPartView:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 182
    iget-object v2, p0, Lus/zoom/zrc/view/SipDialFragment;->dialNumberSecondPartView:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const-string v2, ", "

    .line 184
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lus/zoom/zrcbox/R$string;->accessibility_direct_number:I

    new-array v3, v6, [Ljava/lang/Object;

    aput-object v1, v3, v4

    invoke-virtual {p0, v2, v3}, Lus/zoom/zrc/view/SipDialFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 186
    :cond_4
    iget-object v1, p0, Lus/zoom/zrc/view/SipDialFragment;->dialNumberDivider:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 187
    iget-object v1, p0, Lus/zoom/zrc/view/SipDialFragment;->dialNumberSecondPartView:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 190
    :goto_0
    iget-object v1, p0, Lus/zoom/zrc/view/SipDialFragment;->dialNumberContent:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 192
    :cond_5
    iget-object v1, p0, Lus/zoom/zrc/view/SipDialFragment;->dialNumberDivider:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 193
    iget-object v1, p0, Lus/zoom/zrc/view/SipDialFragment;->dialNumberFirstPartView:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 194
    iget-object v1, p0, Lus/zoom/zrc/view/SipDialFragment;->dialNumberSecondPartView:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 196
    sget v1, Lus/zoom/zrcbox/R$string;->this_room:I

    invoke-virtual {p0, v1}, Lus/zoom/zrc/view/SipDialFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 197
    invoke-virtual {v0}, Lus/zoom/zrcsdk/model/ZRCSipService;->getDisplayName()Ljava/lang/String;

    move-result-object v0

    .line 198
    new-instance v2, Landroid/text/SpannableStringBuilder;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 199
    new-instance v0, Landroid/text/style/SuperscriptSpan;

    invoke-direct {v0}, Landroid/text/style/SuperscriptSpan;-><init>()V

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v5, 0x21

    invoke-virtual {v2, v0, v4, v3, v5}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 200
    new-instance v0, Landroid/text/style/RelativeSizeSpan;

    const v3, 0x3f19999a    # 0.6f

    invoke-direct {v0, v3}, Landroid/text/style/RelativeSizeSpan;-><init>(F)V

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v2, v0, v4, v1, v5}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 201
    iget-object v0, p0, Lus/zoom/zrc/view/SipDialFragment;->dialNumberFirstPartView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 203
    iget-object v0, p0, Lus/zoom/zrc/view/SipDialFragment;->dialNumberContent:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 153
    :cond_6
    :goto_1
    iget-object v0, p0, Lus/zoom/zrc/view/SipDialFragment;->dialNumberFirstPartView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 154
    iget-object v0, p0, Lus/zoom/zrc/view/SipDialFragment;->dialNumberSecondPartView:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 155
    iget-object v0, p0, Lus/zoom/zrc/view/SipDialFragment;->dialNumberDivider:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    :cond_7
    :goto_2
    return-void

    :cond_8
    :goto_3
    return-void
.end method


# virtual methods
.method public onClickDialBtn(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onClickSipDialBtn(Ljava/lang/String;)V
    .locals 3

    .line 132
    sget-object v0, Lus/zoom/zrc/view/SipDialFragment;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onClickSipDialBtn() called with: phoneNumber = ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lus/zoom/zrcsdk/util/ZRCLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 133
    invoke-static {}, Lus/zoom/zrc/phonecall/SipPhoneCallPresenter;->obtainInstance()Lus/zoom/zrc/phonecall/SipPhoneCallPresenter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lus/zoom/zrc/phonecall/SipPhoneCallPresenter;->dialOut(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 134
    invoke-static {}, Lus/zoom/zrc/model/MeetingHistoryStorageManager;->getInstance()Lus/zoom/zrc/model/MeetingHistoryStorageManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lus/zoom/zrc/model/MeetingHistoryStorageManager;->addSipDialHistory(Ljava/lang/String;)V

    .line 135
    invoke-static {}, Lus/zoom/zrc/base/notification/NotificationCenter;->getDefault()Lus/zoom/zrc/base/notification/NotificationCenter;

    move-result-object p1

    sget-object v0, Lus/zoom/zrc/base/notification/UserEvent;->EnterSipCall:Lus/zoom/zrc/base/notification/UserEvent;

    invoke-virtual {p1, v0}, Lus/zoom/zrc/base/notification/NotificationCenter;->postNotification(Lus/zoom/zrc/base/notification/NotificationEvent;)V

    .line 137
    :cond_0
    iget-object p1, p0, Lus/zoom/zrc/view/SipDialFragment;->dialKeyboardView:Lus/zoom/zrc/view/DialKeyboardView;

    if-eqz p1, :cond_1

    .line 138
    invoke-virtual {p1}, Lus/zoom/zrc/view/DialKeyboardView;->cleanupNumber()V

    :cond_1
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x2

    const v1, 0x1030007

    .line 51
    invoke-virtual {p0, v0, v1}, Lus/zoom/zrc/view/SipDialFragment;->setStyle(II)V

    .line 52
    invoke-super {p0, p1}, Lus/zoom/zrc/view/BaseDialFragment;->onCreate(Landroid/os/Bundle;)V

    .line 53
    invoke-virtual {p0}, Lus/zoom/zrc/view/SipDialFragment;->getRetainFragment()Lus/zoom/zrc/base/app/ZRCRetainFragment;

    move-result-object p1

    new-array v0, v0, [Lus/zoom/zrc/base/notification/NotificationEvent;

    sget-object v1, Lus/zoom/zrc/base/notification/ModelEvent;->UpdateDynamicContactList:Lus/zoom/zrc/base/notification/ModelEvent;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lus/zoom/zrc/base/notification/ModelEvent;->UpdateContactList:Lus/zoom/zrc/base/notification/ModelEvent;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-virtual {p1, v0}, Lus/zoom/zrc/base/app/ZRCRetainFragment;->registerNotification([Lus/zoom/zrc/base/notification/NotificationEvent;)V

    .line 54
    invoke-virtual {p0}, Lus/zoom/zrc/view/SipDialFragment;->getRetainFragment()Lus/zoom/zrc/base/app/ZRCRetainFragment;

    move-result-object p1

    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {p1, v0}, Lus/zoom/zrc/base/app/ZRCRetainFragment;->registerOnPropertyChangedCallback(Landroidx/databinding/BaseObservable;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
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

    .line 60
    invoke-direct {p0}, Lus/zoom/zrc/view/SipDialFragment;->decideTheme()I

    move-result p3

    if-eqz p3, :cond_0

    .line 62
    new-instance v0, Landroid/view/ContextThemeWrapper;

    invoke-virtual {p0}, Lus/zoom/zrc/view/SipDialFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1, p3}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 63
    invoke-virtual {p1, v0}, Landroid/view/LayoutInflater;->cloneInContext(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    .line 65
    :cond_0
    sget p3, Lus/zoom/zrcbox/R$layout;->dial_sip_phone:I

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public onHiddenChanged(Z)V
    .locals 1

    .line 104
    invoke-super {p0, p1}, Lus/zoom/zrc/view/BaseDialFragment;->onHiddenChanged(Z)V

    .line 105
    iget-object v0, p0, Lus/zoom/zrc/view/SipDialFragment;->dialKeyboardView:Lus/zoom/zrc/view/DialKeyboardView;

    invoke-virtual {v0, p1}, Lus/zoom/zrc/view/DialKeyboardView;->onHiddenChanged(Z)V

    return-void
.end method

.method public onReceivedPropertyChangedCallbackInActive(Landroidx/databinding/Observable;I)V
    .locals 0

    .line 110
    invoke-super {p0, p1, p2}, Lus/zoom/zrc/view/BaseDialFragment;->onReceivedPropertyChangedCallbackInActive(Landroidx/databinding/Observable;I)V

    .line 111
    sget p1, Landroidx/databinding/library/baseAdapters/BR;->sipService:I

    if-ne p1, p2, :cond_0

    .line 112
    invoke-direct {p0}, Lus/zoom/zrc/view/SipDialFragment;->onUpdateSipService()V

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 1

    .line 96
    invoke-super {p0}, Lus/zoom/zrc/view/BaseDialFragment;->onResume()V

    .line 97
    invoke-direct {p0}, Lus/zoom/zrc/view/SipDialFragment;->onUpdateSipService()V

    .line 98
    iget-object v0, p0, Lus/zoom/zrc/view/SipDialFragment;->dialKeyboardView:Lus/zoom/zrc/view/DialKeyboardView;

    invoke-virtual {v0}, Lus/zoom/zrc/view/DialKeyboardView;->updateDialHistory()V

    return-void
.end method

.method public onStart()V
    .locals 0

    .line 90
    invoke-super {p0}, Lus/zoom/zrc/view/BaseDialFragment;->onStart()V

    .line 91
    invoke-direct {p0}, Lus/zoom/zrc/view/SipDialFragment;->updateDialNumberViews()V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "deprecation"
        }
    .end annotation

    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    .line 72
    invoke-super {p0, p1, p2}, Lus/zoom/zrc/view/BaseDialFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 73
    sget p2, Lus/zoom/zrcbox/R$id;->dial_number_content:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lus/zoom/zrc/view/SipDialFragment;->dialNumberContent:Landroid/view/View;

    .line 74
    sget p2, Lus/zoom/zrcbox/R$id;->dial_number_divider:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lus/zoom/zrc/view/SipDialFragment;->dialNumberDivider:Landroid/view/View;

    .line 75
    sget p2, Lus/zoom/zrcbox/R$id;->dial_number_first_part:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lus/zoom/zrc/view/SipDialFragment;->dialNumberFirstPartView:Landroid/widget/TextView;

    .line 76
    sget p2, Lus/zoom/zrcbox/R$id;->dial_number_second_part:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lus/zoom/zrc/view/SipDialFragment;->dialNumberSecondPartView:Landroid/widget/TextView;

    .line 78
    sget p2, Lus/zoom/zrcbox/R$id;->dial_keyboard_view:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lus/zoom/zrc/view/DialKeyboardView;

    iput-object p2, p0, Lus/zoom/zrc/view/SipDialFragment;->dialKeyboardView:Lus/zoom/zrc/view/DialKeyboardView;

    .line 79
    iget-object p2, p0, Lus/zoom/zrc/view/SipDialFragment;->dialKeyboardView:Lus/zoom/zrc/view/DialKeyboardView;

    invoke-virtual {p2, p0}, Lus/zoom/zrc/view/DialKeyboardView;->setOnClickDialBtnListener(Lus/zoom/zrc/view/DialKeyboardView$OnClickDialBtnListener;)V

    .line 80
    iget-object p2, p0, Lus/zoom/zrc/view/SipDialFragment;->dialKeyboardView:Lus/zoom/zrc/view/DialKeyboardView;

    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Lus/zoom/zrc/view/DialKeyboardView;->setUseSipCallout(Z)V

    .line 81
    iget-object p2, p0, Lus/zoom/zrc/view/SipDialFragment;->dialKeyboardView:Lus/zoom/zrc/view/DialKeyboardView;

    invoke-virtual {p2, p0}, Lus/zoom/zrc/view/DialKeyboardView;->setFragment(Lus/zoom/zrc/base/app/ZRCDialogFragment;)V

    .line 83
    invoke-virtual {p0}, Lus/zoom/zrc/view/SipDialFragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    move-result-object p2

    instance-of p2, p2, Lus/zoom/zrc/view/DialFragment;

    if-eqz p2, :cond_0

    const/4 p2, 0x0

    .line 84
    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundColor(I)V

    :cond_0
    return-void
.end method
