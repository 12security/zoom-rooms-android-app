.class public Lus/zoom/zrc/settings/CameraNameEditDialog;
.super Lus/zoom/zrc/base/app/ZRCDialogFragment;
.source "CameraNameEditDialog.java"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;
.implements Landroid/view/View$OnClickListener;
.implements Landroid/text/TextWatcher;


# instance fields
.field private final MAX_LENGTH:I

.field private cancelBtn:Landroid/widget/TextView;

.field private confirmBtn:Landroid/widget/TextView;

.field private deviceInfo:Lus/zoom/zrcsdk/model/ZRCMediaDeviceInfo;

.field private nameEditView:Landroid/widget/EditText;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 32
    invoke-direct {p0}, Lus/zoom/zrc/base/app/ZRCDialogFragment;-><init>()V

    const/16 v0, 0x20

    .line 38
    iput v0, p0, Lus/zoom/zrc/settings/CameraNameEditDialog;->MAX_LENGTH:I

    return-void
.end method

.method private cancelAction()V
    .locals 2

    .line 140
    invoke-virtual {p0}, Lus/zoom/zrc/settings/CameraNameEditDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lus/zoom/zrc/settings/CameraNameEditDialog;->nameEditView:Landroid/widget/EditText;

    invoke-static {v0, v1}, Lus/zoom/androidlib/util/UIUtil;->closeSoftKeyboard(Landroid/content/Context;Landroid/view/View;)V

    .line 141
    iget-object v0, p0, Lus/zoom/zrc/settings/CameraNameEditDialog;->nameEditView:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 142
    invoke-virtual {p0}, Lus/zoom/zrc/settings/CameraNameEditDialog;->dismiss()V

    return-void
.end method

.method private confirmAction()V
    .locals 5

    .line 130
    iget-object v0, p0, Lus/zoom/zrc/settings/CameraNameEditDialog;->deviceInfo:Lus/zoom/zrcsdk/model/ZRCMediaDeviceInfo;

    if-nez v0, :cond_0

    return-void

    .line 133
    :cond_0
    invoke-virtual {p0}, Lus/zoom/zrc/settings/CameraNameEditDialog;->dismiss()V

    .line 134
    iget-object v0, p0, Lus/zoom/zrc/settings/CameraNameEditDialog;->nameEditView:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    .line 135
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v0, ""

    goto :goto_0

    :cond_1
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 136
    :goto_0
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v1

    iget-object v2, p0, Lus/zoom/zrc/settings/CameraNameEditDialog;->deviceInfo:Lus/zoom/zrcsdk/model/ZRCMediaDeviceInfo;

    invoke-virtual {v2}, Lus/zoom/zrcsdk/model/ZRCMediaDeviceInfo;->getId()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lus/zoom/zrc/settings/CameraNameEditDialog;->deviceInfo:Lus/zoom/zrcsdk/model/ZRCMediaDeviceInfo;

    invoke-virtual {v3}, Lus/zoom/zrcsdk/model/ZRCMediaDeviceInfo;->getName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x2

    invoke-virtual {v1, v2, v3, v4, v0}, Lus/zoom/zrc/model/Model;->requestSetDeviceDisplayName(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method private setDeviceInfo(Lus/zoom/zrcsdk/model/ZRCMediaDeviceInfo;)V
    .locals 0

    .line 120
    iput-object p1, p0, Lus/zoom/zrc/settings/CameraNameEditDialog;->deviceInfo:Lus/zoom/zrcsdk/model/ZRCMediaDeviceInfo;

    return-void
.end method

.method public static show(Lus/zoom/zrc/base/app/ZRCFragmentManagerHelper;Lus/zoom/zrcsdk/model/ZRCMediaDeviceInfo;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 111
    :cond_0
    const-class v0, Lus/zoom/zrc/settings/CameraNameEditDialog;

    invoke-virtual {p0, v0}, Lus/zoom/zrc/base/app/ZRCFragmentManagerHelper;->getFragment(Ljava/lang/Class;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    check-cast v0, Lus/zoom/zrc/settings/CameraNameEditDialog;

    if-nez v0, :cond_1

    .line 113
    new-instance v0, Lus/zoom/zrc/settings/CameraNameEditDialog;

    invoke-direct {v0}, Lus/zoom/zrc/settings/CameraNameEditDialog;-><init>()V

    .line 115
    :cond_1
    invoke-direct {v0, p1}, Lus/zoom/zrc/settings/CameraNameEditDialog;->setDeviceInfo(Lus/zoom/zrcsdk/model/ZRCMediaDeviceInfo;)V

    .line 116
    invoke-virtual {p0, v0}, Lus/zoom/zrc/base/app/ZRCFragmentManagerHelper;->showDialogFragment(Landroidx/fragment/app/DialogFragment;)V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 156
    iget-object v0, p0, Lus/zoom/zrc/settings/CameraNameEditDialog;->confirmBtn:Landroid/widget/TextView;

    if-ne p1, v0, :cond_0

    .line 157
    invoke-direct {p0}, Lus/zoom/zrc/settings/CameraNameEditDialog;->confirmAction()V

    goto :goto_0

    .line 158
    :cond_0
    iget-object v0, p0, Lus/zoom/zrc/settings/CameraNameEditDialog;->cancelBtn:Landroid/widget/TextView;

    if-ne p1, v0, :cond_1

    .line 159
    invoke-direct {p0}, Lus/zoom/zrc/settings/CameraNameEditDialog;->cancelAction()V

    :cond_1
    :goto_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 56
    invoke-super {p0, p1}, Lus/zoom/zrc/base/app/ZRCDialogFragment;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x0

    const/4 v0, 0x1

    .line 57
    invoke-virtual {p0, v0, p1}, Lus/zoom/zrc/settings/CameraNameEditDialog;->setStyle(II)V

    .line 58
    invoke-virtual {p0, p1}, Lus/zoom/zrc/settings/CameraNameEditDialog;->setCancelable(Z)V

    .line 59
    invoke-virtual {p0}, Lus/zoom/zrc/settings/CameraNameEditDialog;->getRetainFragment()Lus/zoom/zrc/base/app/ZRCRetainFragment;

    move-result-object p1

    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {p1, v0}, Lus/zoom/zrc/base/app/ZRCRetainFragment;->registerOnPropertyChangedCallback(Landroidx/databinding/BaseObservable;)V

    .line 60
    invoke-virtual {p0}, Lus/zoom/zrc/settings/CameraNameEditDialog;->getRetainFragment()Lus/zoom/zrc/base/app/ZRCRetainFragment;

    move-result-object p1

    iget-object p1, p1, Lus/zoom/zrc/base/app/ZRCRetainFragment;->cachedObj:Ljava/lang/Object;

    if-eqz p1, :cond_0

    .line 61
    invoke-virtual {p0}, Lus/zoom/zrc/settings/CameraNameEditDialog;->getRetainFragment()Lus/zoom/zrc/base/app/ZRCRetainFragment;

    move-result-object p1

    iget-object p1, p1, Lus/zoom/zrc/base/app/ZRCRetainFragment;->cachedObj:Ljava/lang/Object;

    check-cast p1, Lus/zoom/zrcsdk/model/ZRCMediaDeviceInfo;

    iput-object p1, p0, Lus/zoom/zrc/settings/CameraNameEditDialog;->deviceInfo:Lus/zoom/zrcsdk/model/ZRCMediaDeviceInfo;

    goto :goto_0

    .line 63
    :cond_0
    invoke-virtual {p0}, Lus/zoom/zrc/settings/CameraNameEditDialog;->getRetainFragment()Lus/zoom/zrc/base/app/ZRCRetainFragment;

    move-result-object p1

    iget-object v0, p0, Lus/zoom/zrc/settings/CameraNameEditDialog;->deviceInfo:Lus/zoom/zrcsdk/model/ZRCMediaDeviceInfo;

    iput-object v0, p1, Lus/zoom/zrc/base/app/ZRCRetainFragment;->cachedObj:Ljava/lang/Object;

    .line 66
    :goto_0
    invoke-virtual {p0}, Lus/zoom/zrc/settings/CameraNameEditDialog;->setDisableImmersiveModeForPolycomTrio()V

    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 3
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 95
    new-instance p1, Landroid/app/Dialog;

    invoke-virtual {p0}, Lus/zoom/zrc/settings/CameraNameEditDialog;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 96
    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_0

    const v1, 0x106000d

    .line 98
    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    .line 99
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 100
    iget v2, v1, Landroid/view/WindowManager$LayoutParams;->systemUiVisibility:I

    or-int/lit8 v2, v2, 0x4

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->systemUiVisibility:I

    .line 101
    invoke-virtual {v0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    const/4 v1, 0x5

    .line 102
    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    :cond_0
    return-object p1
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
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

    .line 72
    sget p3, Lus/zoom/zrcbox/R$layout;->camera_name_edit_dialog:I

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 73
    sget p2, Lus/zoom/zrcbox/R$id;->input_box:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/EditText;

    iput-object p2, p0, Lus/zoom/zrc/settings/CameraNameEditDialog;->nameEditView:Landroid/widget/EditText;

    .line 74
    sget p2, Lus/zoom/zrcbox/R$id;->confirm_btn:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lus/zoom/zrc/settings/CameraNameEditDialog;->confirmBtn:Landroid/widget/TextView;

    .line 75
    sget p2, Lus/zoom/zrcbox/R$id;->cancel_btn:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lus/zoom/zrc/settings/CameraNameEditDialog;->cancelBtn:Landroid/widget/TextView;

    .line 76
    iget-object p2, p0, Lus/zoom/zrc/settings/CameraNameEditDialog;->deviceInfo:Lus/zoom/zrcsdk/model/ZRCMediaDeviceInfo;

    if-eqz p2, :cond_1

    .line 77
    iget-object p3, p0, Lus/zoom/zrc/settings/CameraNameEditDialog;->nameEditView:Landroid/widget/EditText;

    invoke-virtual {p2}, Lus/zoom/zrcsdk/model/ZRCMediaDeviceInfo;->getDisplayDeviceName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 78
    iget-object p2, p0, Lus/zoom/zrc/settings/CameraNameEditDialog;->nameEditView:Landroid/widget/EditText;

    iget-object p3, p0, Lus/zoom/zrc/settings/CameraNameEditDialog;->deviceInfo:Lus/zoom/zrcsdk/model/ZRCMediaDeviceInfo;

    invoke-virtual {p3}, Lus/zoom/zrcsdk/model/ZRCMediaDeviceInfo;->getDisplayDeviceName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result p3

    invoke-virtual {p2, p3}, Landroid/widget/EditText;->setSelection(I)V

    .line 79
    iget-object p2, p0, Lus/zoom/zrc/settings/CameraNameEditDialog;->deviceInfo:Lus/zoom/zrcsdk/model/ZRCMediaDeviceInfo;

    invoke-virtual {p2}, Lus/zoom/zrcsdk/model/ZRCMediaDeviceInfo;->getDisplayDeviceName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p2

    const/4 p3, 0x1

    const/16 v1, 0x20

    if-le p2, v1, :cond_0

    .line 80
    iget-object p2, p0, Lus/zoom/zrc/settings/CameraNameEditDialog;->nameEditView:Landroid/widget/EditText;

    new-array p3, p3, [Landroid/text/InputFilter;

    new-instance v1, Landroid/text/InputFilter$LengthFilter;

    iget-object v2, p0, Lus/zoom/zrc/settings/CameraNameEditDialog;->deviceInfo:Lus/zoom/zrcsdk/model/ZRCMediaDeviceInfo;

    invoke-virtual {v2}, Lus/zoom/zrcsdk/model/ZRCMediaDeviceInfo;->getDisplayDeviceName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-direct {v1, v2}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v1, p3, v0

    invoke-virtual {p2, p3}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    goto :goto_0

    .line 82
    :cond_0
    iget-object p2, p0, Lus/zoom/zrc/settings/CameraNameEditDialog;->nameEditView:Landroid/widget/EditText;

    new-array p3, p3, [Landroid/text/InputFilter;

    new-instance v2, Landroid/text/InputFilter$LengthFilter;

    invoke-direct {v2, v1}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v2, p3, v0

    invoke-virtual {p2, p3}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 85
    :cond_1
    :goto_0
    iget-object p2, p0, Lus/zoom/zrc/settings/CameraNameEditDialog;->nameEditView:Landroid/widget/EditText;

    invoke-virtual {p2, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 86
    iget-object p2, p0, Lus/zoom/zrc/settings/CameraNameEditDialog;->nameEditView:Landroid/widget/EditText;

    invoke-virtual {p2, p0}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 87
    iget-object p2, p0, Lus/zoom/zrc/settings/CameraNameEditDialog;->confirmBtn:Landroid/widget/TextView;

    invoke-virtual {p2, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 88
    iget-object p2, p0, Lus/zoom/zrc/settings/CameraNameEditDialog;->cancelBtn:Landroid/widget/TextView;

    invoke-virtual {p2, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object p1
.end method

.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 0

    const/4 p1, 0x6

    if-ne p2, p1, :cond_0

    .line 148
    invoke-direct {p0}, Lus/zoom/zrc/settings/CameraNameEditDialog;->confirmAction()V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public onReceivedPropertyChangedCallbackInActive(Landroidx/databinding/Observable;I)V
    .locals 0

    .line 42
    sget p1, Landroidx/databinding/library/baseAdapters/BR;->settingsDeviceInfo:I

    if-ne p2, p1, :cond_2

    .line 43
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object p1

    invoke-virtual {p1}, Lus/zoom/zrc/model/Model;->getSettingsDeviceInfo()Lus/zoom/zrcsdk/model/ZRCSettingsDeviceInfo;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 44
    invoke-virtual {p1}, Lus/zoom/zrcsdk/model/ZRCSettingsDeviceInfo;->getCameraList()Ljava/util/ArrayList;

    move-result-object p2

    if-nez p2, :cond_0

    goto :goto_0

    .line 48
    :cond_0
    invoke-virtual {p1}, Lus/zoom/zrcsdk/model/ZRCSettingsDeviceInfo;->getCameraList()Ljava/util/ArrayList;

    move-result-object p1

    iget-object p2, p0, Lus/zoom/zrc/settings/CameraNameEditDialog;->deviceInfo:Lus/zoom/zrcsdk/model/ZRCMediaDeviceInfo;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 49
    invoke-virtual {p0}, Lus/zoom/zrc/settings/CameraNameEditDialog;->dismiss()V

    goto :goto_1

    .line 45
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lus/zoom/zrc/settings/CameraNameEditDialog;->dismiss()V

    return-void

    :cond_2
    :goto_1
    return-void
.end method

.method public onStart()V
    .locals 1

    .line 125
    invoke-super {p0}, Lus/zoom/zrc/base/app/ZRCDialogFragment;->onStart()V

    .line 126
    iget-object v0, p0, Lus/zoom/zrc/settings/CameraNameEditDialog;->nameEditView:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 1

    .line 170
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p2

    const/16 p3, 0x20

    if-lt p2, p3, :cond_0

    .line 171
    iget-object p2, p0, Lus/zoom/zrc/settings/CameraNameEditDialog;->nameEditView:Landroid/widget/EditText;

    const/4 p3, 0x1

    new-array p3, p3, [Landroid/text/InputFilter;

    const/4 p4, 0x0

    new-instance v0, Landroid/text/InputFilter$LengthFilter;

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    invoke-direct {v0, p1}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v0, p3, p4

    invoke-virtual {p2, p3}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    :cond_0
    return-void
.end method
