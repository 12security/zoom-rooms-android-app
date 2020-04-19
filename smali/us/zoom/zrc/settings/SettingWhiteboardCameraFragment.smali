.class public Lus/zoom/zrc/settings/SettingWhiteboardCameraFragment;
.super Lus/zoom/zrc/settings/SettingBaseFragment;
.source "SettingWhiteboardCameraFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Landroid/view/View$OnClickListener;


# static fields
.field public static final TAG:Ljava/lang/String; = "SettingWhiteboardCameraFragment"


# instance fields
.field private adapter:Lus/zoom/zrc/settings/WhiteboardCameraAdapter;

.field private backBtn:Landroid/view/View;

.field private progressBar:Landroid/widget/ProgressBar;

.field private runProgressBar:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 30
    invoke-direct {p0}, Lus/zoom/zrc/settings/SettingBaseFragment;-><init>()V

    .line 38
    new-instance v0, Lus/zoom/zrc/settings/SettingWhiteboardCameraFragment$1;

    invoke-direct {v0, p0}, Lus/zoom/zrc/settings/SettingWhiteboardCameraFragment$1;-><init>(Lus/zoom/zrc/settings/SettingWhiteboardCameraFragment;)V

    iput-object v0, p0, Lus/zoom/zrc/settings/SettingWhiteboardCameraFragment;->runProgressBar:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$000(Lus/zoom/zrc/settings/SettingWhiteboardCameraFragment;)Landroid/widget/ProgressBar;
    .locals 0

    .line 30
    iget-object p0, p0, Lus/zoom/zrc/settings/SettingWhiteboardCameraFragment;->progressBar:Landroid/widget/ProgressBar;

    return-object p0
.end method

.method static synthetic access$100(Lus/zoom/zrc/settings/SettingWhiteboardCameraFragment;Lus/zoom/zrcsdk/model/ZMDeviceItem;)V
    .locals 0

    .line 30
    invoke-direct {p0, p1}, Lus/zoom/zrc/settings/SettingWhiteboardCameraFragment;->onClickItem(Lus/zoom/zrcsdk/model/ZMDeviceItem;)V

    return-void
.end method

.method private onClickItem(Lus/zoom/zrcsdk/model/ZMDeviceItem;)V
    .locals 3

    .line 168
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/Model;->getSelectedWhiteboardCamera()Lus/zoom/zrcsdk/model/ZMDeviceItem;

    move-result-object v0

    invoke-virtual {p1, v0}, Lus/zoom/zrcsdk/model/ZMDeviceItem;->isSameAs(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 169
    new-instance v0, Lus/zoom/zrc/base/app/ZRCAlertDialog$Builder;

    invoke-virtual {p0}, Lus/zoom/zrc/settings/SettingWhiteboardCameraFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lus/zoom/zrc/base/app/ZRCAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget v1, Lus/zoom/zrcbox/R$string;->disconnect:I

    .line 170
    invoke-virtual {v0, v1}, Lus/zoom/zrc/base/app/ZRCAlertDialog$Builder;->setTitle(I)Lus/zoom/zrc/base/app/ZRCAlertDialog$Builder;

    move-result-object v0

    sget v1, Lus/zoom/zrcbox/R$string;->wbc_disconnected_message:I

    .line 171
    invoke-virtual {v0, v1}, Lus/zoom/zrc/base/app/ZRCAlertDialog$Builder;->setMessage(I)Lus/zoom/zrc/base/app/ZRCAlertDialog$Builder;

    move-result-object v0

    sget v1, Lus/zoom/zrcbox/R$string;->disconnect:I

    .line 172
    invoke-virtual {p0, v1}, Lus/zoom/zrc/settings/SettingWhiteboardCameraFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lus/zoom/zrc/settings/SettingWhiteboardCameraFragment$4;

    invoke-direct {v2, p0, p1}, Lus/zoom/zrc/settings/SettingWhiteboardCameraFragment$4;-><init>(Lus/zoom/zrc/settings/SettingWhiteboardCameraFragment;Lus/zoom/zrcsdk/model/ZMDeviceItem;)V

    invoke-virtual {v0, v1, v2}, Lus/zoom/zrc/base/app/ZRCAlertDialog$Builder;->setPositiveButton(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Lus/zoom/zrc/base/app/ZRCAlertDialog$Builder;

    move-result-object p1

    sget v0, Lus/zoom/zrcbox/R$string;->cancel:I

    .line 178
    invoke-virtual {p0, v0}, Lus/zoom/zrc/settings/SettingWhiteboardCameraFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lus/zoom/zrc/settings/SettingWhiteboardCameraFragment$3;

    invoke-direct {v1, p0}, Lus/zoom/zrc/settings/SettingWhiteboardCameraFragment$3;-><init>(Lus/zoom/zrc/settings/SettingWhiteboardCameraFragment;)V

    invoke-virtual {p1, v0, v1}, Lus/zoom/zrc/base/app/ZRCAlertDialog$Builder;->setNegativeButton(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Lus/zoom/zrc/base/app/ZRCAlertDialog$Builder;

    move-result-object p1

    .line 184
    invoke-virtual {p1}, Lus/zoom/zrc/base/app/ZRCAlertDialog$Builder;->create()Lus/zoom/zrc/base/app/ZRCAlertDialog;

    move-result-object p1

    .line 185
    invoke-virtual {p1}, Lus/zoom/zrc/base/app/ZRCAlertDialog;->show()V

    goto :goto_0

    .line 187
    :cond_0
    invoke-virtual {p0}, Lus/zoom/zrc/settings/SettingWhiteboardCameraFragment;->getFragmentManagerHelper()Lus/zoom/zrc/base/app/ZRCFragmentManagerHelper;

    move-result-object v0

    invoke-static {v0, p1}, Lus/zoom/zrc/settings/WhiteboardCameraPairDialogFragment;->show(Lus/zoom/zrc/base/app/ZRCFragmentManagerHelper;Lus/zoom/zrcsdk/model/ZMDeviceItem;)V

    :goto_0
    return-void
.end method

.method private runProgressBarSeconds()V
    .locals 4

    .line 46
    iget-object v0, p0, Lus/zoom/zrc/settings/SettingWhiteboardCameraFragment;->progressBar:Landroid/widget/ProgressBar;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    .line 49
    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 50
    iget-object v0, p0, Lus/zoom/zrc/settings/SettingWhiteboardCameraFragment;->progressBar:Landroid/widget/ProgressBar;

    iget-object v1, p0, Lus/zoom/zrc/settings/SettingWhiteboardCameraFragment;->runProgressBar:Ljava/lang/Runnable;

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/ProgressBar;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method


# virtual methods
.method public controlViewVisible()V
    .locals 6

    .line 106
    invoke-virtual {p0}, Lus/zoom/zrc/settings/SettingWhiteboardCameraFragment;->getView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 111
    :cond_0
    invoke-virtual {p0}, Lus/zoom/zrc/settings/SettingWhiteboardCameraFragment;->isTablet()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x0

    if-eqz v0, :cond_1

    .line 113
    new-array v0, v3, [Ljava/lang/Integer;

    sget v3, Lus/zoom/zrcbox/R$id;->panelTitleBar:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v2

    sget v2, Lus/zoom/zrcbox/R$id;->title_bottom_line:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    goto :goto_0

    .line 116
    :cond_1
    new-array v0, v3, [Ljava/lang/Integer;

    sget v3, Lus/zoom/zrcbox/R$id;->panelTitleBar:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v2

    sget v2, Lus/zoom/zrcbox/R$id;->title_bottom_line:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    move-object v5, v4

    move-object v4, v0

    move-object v0, v5

    .line 118
    :goto_0
    invoke-virtual {p0, v0}, Lus/zoom/zrc/settings/SettingWhiteboardCameraFragment;->batchHideView(Ljava/util/List;)V

    .line 119
    invoke-virtual {p0, v4}, Lus/zoom/zrc/settings/SettingWhiteboardCameraFragment;->batchShowView(Ljava/util/List;)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 143
    iget-object v0, p0, Lus/zoom/zrc/settings/SettingWhiteboardCameraFragment;->backBtn:Landroid/view/View;

    if-ne p1, v0, :cond_0

    .line 144
    invoke-virtual {p0}, Lus/zoom/zrc/settings/SettingWhiteboardCameraFragment;->onBack()V

    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 55
    invoke-super {p0, p1}, Lus/zoom/zrc/settings/SettingBaseFragment;->onCreate(Landroid/os/Bundle;)V

    .line 56
    invoke-virtual {p0}, Lus/zoom/zrc/settings/SettingWhiteboardCameraFragment;->getRetainFragment()Lus/zoom/zrc/base/app/ZRCRetainFragment;

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

    .line 84
    sget p3, Lus/zoom/zrcbox/R$layout;->setting_wbcamera_layout:I

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 86
    sget p2, Lus/zoom/zrcbox/R$id;->back_btn:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lus/zoom/zrc/settings/SettingWhiteboardCameraFragment;->backBtn:Landroid/view/View;

    .line 87
    invoke-virtual {p0}, Lus/zoom/zrc/settings/SettingWhiteboardCameraFragment;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lus/zoom/androidlib/util/UIUtil;->isTablet(Landroid/content/Context;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 88
    iget-object p2, p0, Lus/zoom/zrc/settings/SettingWhiteboardCameraFragment;->backBtn:Landroid/view/View;

    const/16 p3, 0x8

    invoke-virtual {p2, p3}, Landroid/view/View;->setVisibility(I)V

    .line 90
    :cond_0
    iget-object p2, p0, Lus/zoom/zrc/settings/SettingWhiteboardCameraFragment;->backBtn:Landroid/view/View;

    invoke-virtual {p2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 91
    iget-object p2, p0, Lus/zoom/zrc/settings/SettingWhiteboardCameraFragment;->backBtn:Landroid/view/View;

    invoke-static {p2}, Lus/zoom/zrc/settings/SettingWhiteboardCameraFragment;->setBackToSettingsContentDescription(Landroid/view/View;)V

    .line 93
    sget p2, Lus/zoom/zrcbox/R$id;->title_progress_bar:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ProgressBar;

    iput-object p2, p0, Lus/zoom/zrc/settings/SettingWhiteboardCameraFragment;->progressBar:Landroid/widget/ProgressBar;

    .line 95
    sget p2, Lus/zoom/zrcbox/R$id;->source_list:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ListView;

    .line 96
    new-instance p3, Lus/zoom/zrc/settings/WhiteboardCameraAdapter;

    invoke-virtual {p0}, Lus/zoom/zrc/settings/SettingWhiteboardCameraFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p3, v0}, Lus/zoom/zrc/settings/WhiteboardCameraAdapter;-><init>(Landroid/content/Context;)V

    iput-object p3, p0, Lus/zoom/zrc/settings/SettingWhiteboardCameraFragment;->adapter:Lus/zoom/zrc/settings/WhiteboardCameraAdapter;

    .line 98
    iget-object p3, p0, Lus/zoom/zrc/settings/SettingWhiteboardCameraFragment;->adapter:Lus/zoom/zrc/settings/WhiteboardCameraAdapter;

    invoke-virtual {p2, p3}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 99
    invoke-virtual {p2, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    return-object p1
.end method

.method public onHiddenChanged(Z)V
    .locals 0

    if-eqz p1, :cond_0

    .line 75
    invoke-static {}, Lus/zoom/zrc/utils/WhiteboardCameraHelper;->getDefault()Lus/zoom/zrc/utils/WhiteboardCameraHelper;

    move-result-object p1

    invoke-virtual {p1}, Lus/zoom/zrc/utils/WhiteboardCameraHelper;->stopSearch()V

    goto :goto_0

    .line 77
    :cond_0
    invoke-static {}, Lus/zoom/zrc/utils/WhiteboardCameraHelper;->getDefault()Lus/zoom/zrc/utils/WhiteboardCameraHelper;

    move-result-object p1

    invoke-virtual {p1}, Lus/zoom/zrc/utils/WhiteboardCameraHelper;->startSearch()V

    :goto_0
    return-void
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

    .line 150
    iget-object p1, p0, Lus/zoom/zrc/settings/SettingWhiteboardCameraFragment;->adapter:Lus/zoom/zrc/settings/WhiteboardCameraAdapter;

    invoke-virtual {p1, p3}, Lus/zoom/zrc/settings/WhiteboardCameraAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lus/zoom/zrcsdk/model/ZMDeviceItem;

    if-nez p1, :cond_0

    return-void

    .line 155
    :cond_0
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object p2

    invoke-virtual {p2}, Lus/zoom/zrc/model/Model;->isSettingsLocked()Z

    move-result p2

    if-eqz p2, :cond_1

    .line 156
    invoke-virtual {p0}, Lus/zoom/zrc/settings/SettingWhiteboardCameraFragment;->getFragmentManagerHelper()Lus/zoom/zrc/base/app/ZRCFragmentManagerHelper;

    move-result-object p2

    sget p3, Lus/zoom/zrcbox/R$string;->unlock_settings_message:I

    invoke-virtual {p0, p3}, Lus/zoom/zrc/settings/SettingWhiteboardCameraFragment;->getString(I)Ljava/lang/String;

    move-result-object p3

    new-instance p4, Lus/zoom/zrc/settings/SettingWhiteboardCameraFragment$2;

    invoke-direct {p4, p0, p1}, Lus/zoom/zrc/settings/SettingWhiteboardCameraFragment$2;-><init>(Lus/zoom/zrc/settings/SettingWhiteboardCameraFragment;Lus/zoom/zrcsdk/model/ZMDeviceItem;)V

    invoke-static {p2, p3, p4}, Lus/zoom/zrc/settings/SettingPassCodeEntryDialog;->show(Lus/zoom/zrc/base/app/ZRCFragmentManagerHelper;Ljava/lang/CharSequence;Lus/zoom/androidlib/util/EventAction;)V

    goto :goto_0

    .line 163
    :cond_1
    invoke-direct {p0, p1}, Lus/zoom/zrc/settings/SettingWhiteboardCameraFragment;->onClickItem(Lus/zoom/zrcsdk/model/ZMDeviceItem;)V

    :goto_0
    return-void
.end method

.method public onReceivedPropertyChangedCallbackInActive(Landroidx/databinding/Observable;I)V
    .locals 1

    .line 124
    sget p1, Landroidx/databinding/library/baseAdapters/BR;->whiteboardCameraList:I

    if-ne p1, p2, :cond_0

    .line 125
    iget-object p1, p0, Lus/zoom/zrc/settings/SettingWhiteboardCameraFragment;->adapter:Lus/zoom/zrc/settings/WhiteboardCameraAdapter;

    invoke-virtual {p1}, Lus/zoom/zrc/settings/WhiteboardCameraAdapter;->onUpdateWbCameraList()V

    .line 126
    iget-object p1, p0, Lus/zoom/zrc/settings/SettingWhiteboardCameraFragment;->adapter:Lus/zoom/zrc/settings/WhiteboardCameraAdapter;

    invoke-virtual {p1}, Lus/zoom/zrc/settings/WhiteboardCameraAdapter;->notifyDataSetChanged()V

    .line 127
    invoke-direct {p0}, Lus/zoom/zrc/settings/SettingWhiteboardCameraFragment;->runProgressBarSeconds()V

    goto :goto_0

    .line 128
    :cond_0
    sget p1, Landroidx/databinding/library/baseAdapters/BR;->settingsLocked:I

    if-ne p1, p2, :cond_1

    .line 129
    iget-object p1, p0, Lus/zoom/zrc/settings/SettingWhiteboardCameraFragment;->adapter:Lus/zoom/zrc/settings/WhiteboardCameraAdapter;

    invoke-virtual {p1}, Lus/zoom/zrc/settings/WhiteboardCameraAdapter;->notifyDataSetChanged()V

    goto :goto_0

    .line 130
    :cond_1
    sget p1, Landroidx/databinding/library/baseAdapters/BR;->selectedWhiteboardCamera:I

    if-ne p1, p2, :cond_2

    .line 131
    iget-object p1, p0, Lus/zoom/zrc/settings/SettingWhiteboardCameraFragment;->adapter:Lus/zoom/zrc/settings/WhiteboardCameraAdapter;

    invoke-virtual {p1}, Lus/zoom/zrc/settings/WhiteboardCameraAdapter;->onUpdateWbCameraList()V

    .line 132
    iget-object p1, p0, Lus/zoom/zrc/settings/SettingWhiteboardCameraFragment;->adapter:Lus/zoom/zrc/settings/WhiteboardCameraAdapter;

    invoke-virtual {p1}, Lus/zoom/zrc/settings/WhiteboardCameraAdapter;->notifyDataSetChanged()V

    goto :goto_0

    .line 133
    :cond_2
    sget p1, Landroidx/databinding/library/baseAdapters/BR;->whiteboardCameraInfo:I

    if-ne p1, p2, :cond_3

    .line 134
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object p1

    invoke-virtual {p1}, Lus/zoom/zrc/model/Model;->getWhiteboardCameraInfo()Lus/zoom/zrcsdk/model/ZMDeviceInfo;

    move-result-object p1

    if-nez p1, :cond_3

    const-string p1, "SettingWhiteboardCameraFragment"

    const-string p2, "whiteboardCameraInfo is NULL, dismiss"

    const/4 v0, 0x0

    .line 135
    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1, p2, v0}, Lus/zoom/zrcsdk/util/ZRCLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 136
    invoke-virtual {p0}, Lus/zoom/zrc/settings/SettingWhiteboardCameraFragment;->onBack()V

    :cond_3
    :goto_0
    return-void
.end method

.method public onStart()V
    .locals 1

    .line 61
    invoke-super {p0}, Lus/zoom/zrc/settings/SettingBaseFragment;->onStart()V

    .line 62
    invoke-static {}, Lus/zoom/zrc/utils/WhiteboardCameraHelper;->getDefault()Lus/zoom/zrc/utils/WhiteboardCameraHelper;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/utils/WhiteboardCameraHelper;->startSearch()V

    .line 63
    invoke-direct {p0}, Lus/zoom/zrc/settings/SettingWhiteboardCameraFragment;->runProgressBarSeconds()V

    return-void
.end method

.method public onStop()V
    .locals 1

    .line 68
    invoke-super {p0}, Lus/zoom/zrc/settings/SettingBaseFragment;->onStop()V

    .line 69
    invoke-static {}, Lus/zoom/zrc/utils/WhiteboardCameraHelper;->getDefault()Lus/zoom/zrc/utils/WhiteboardCameraHelper;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/utils/WhiteboardCameraHelper;->stopSearch()V

    return-void
.end method
