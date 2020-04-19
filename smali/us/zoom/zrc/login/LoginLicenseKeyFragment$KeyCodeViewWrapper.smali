.class Lus/zoom/zrc/login/LoginLicenseKeyFragment$KeyCodeViewWrapper;
.super Ljava/lang/Object;
.source "LoginLicenseKeyFragment.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lus/zoom/zrc/login/LoginLicenseKeyFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "KeyCodeViewWrapper"
.end annotation


# instance fields
.field private mInputView:Lus/zoom/zrc/base/widget/ZRCEditText;

.field private mKeyCodeView:Lus/zoom/zrc/login/widget/LoginKeyCodeView;

.field final synthetic this$0:Lus/zoom/zrc/login/LoginLicenseKeyFragment;


# direct methods
.method constructor <init>(Lus/zoom/zrc/login/LoginLicenseKeyFragment;Landroid/view/View;)V
    .locals 0

    .line 219
    iput-object p1, p0, Lus/zoom/zrc/login/LoginLicenseKeyFragment$KeyCodeViewWrapper;->this$0:Lus/zoom/zrc/login/LoginLicenseKeyFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 220
    sget p1, Lus/zoom/zrcbox/R$id;->input_license_key_code:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lus/zoom/zrc/login/widget/LoginKeyCodeView;

    iput-object p1, p0, Lus/zoom/zrc/login/LoginLicenseKeyFragment$KeyCodeViewWrapper;->mKeyCodeView:Lus/zoom/zrc/login/widget/LoginKeyCodeView;

    .line 221
    sget p1, Lus/zoom/zrcbox/R$id;->input_license_key_edit:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lus/zoom/zrc/base/widget/ZRCEditText;

    iput-object p1, p0, Lus/zoom/zrc/login/LoginLicenseKeyFragment$KeyCodeViewWrapper;->mInputView:Lus/zoom/zrc/base/widget/ZRCEditText;

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 3

    .line 285
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lus/zoom/zrc/login/util/LoginLicenseKeyUtils;->formatLicenseKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 286
    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 287
    iget-object v1, p0, Lus/zoom/zrc/login/LoginLicenseKeyFragment$KeyCodeViewWrapper;->mInputView:Lus/zoom/zrc/base/widget/ZRCEditText;

    invoke-virtual {v1, v0}, Lus/zoom/zrc/base/widget/ZRCEditText;->setText(Ljava/lang/CharSequence;)V

    .line 288
    iget-object v1, p0, Lus/zoom/zrc/login/LoginLicenseKeyFragment$KeyCodeViewWrapper;->mInputView:Lus/zoom/zrc/base/widget/ZRCEditText;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {v1, v0}, Lus/zoom/zrc/base/widget/ZRCEditText;->setSelection(I)V

    .line 291
    :cond_0
    iget-object v0, p0, Lus/zoom/zrc/login/LoginLicenseKeyFragment$KeyCodeViewWrapper;->mInputView:Lus/zoom/zrc/base/widget/ZRCEditText;

    invoke-static {v0}, Lus/zoom/zrc/login/util/LoginLicenseKeyUtils;->getLicenseKeyLength(Landroid/widget/TextView;)I

    move-result v0

    const/16 v1, 0x10

    if-lt v0, v1, :cond_1

    const-string v0, "User input complete, login with license key: %s"

    const/4 v1, 0x1

    .line 293
    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Lus/zoom/zrcsdk/util/ZRCLog;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 294
    iget-object p1, p0, Lus/zoom/zrc/login/LoginLicenseKeyFragment$KeyCodeViewWrapper;->this$0:Lus/zoom/zrc/login/LoginLicenseKeyFragment;

    invoke-static {p1}, Lus/zoom/zrc/login/LoginLicenseKeyFragment;->access$100(Lus/zoom/zrc/login/LoginLicenseKeyFragment;)V

    goto :goto_0

    .line 296
    :cond_1
    iget-object p1, p0, Lus/zoom/zrc/login/LoginLicenseKeyFragment$KeyCodeViewWrapper;->this$0:Lus/zoom/zrc/login/LoginLicenseKeyFragment;

    invoke-virtual {p1}, Lus/zoom/zrc/login/LoginLicenseKeyFragment;->hideErrorMessage()V

    :goto_0
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method getLicenseKey()Ljava/lang/String;
    .locals 1

    .line 225
    iget-object v0, p0, Lus/zoom/zrc/login/LoginLicenseKeyFragment$KeyCodeViewWrapper;->mKeyCodeView:Lus/zoom/zrc/login/widget/LoginKeyCodeView;

    if-eqz v0, :cond_0

    .line 226
    invoke-virtual {v0}, Lus/zoom/zrc/login/widget/LoginKeyCodeView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 227
    :cond_0
    iget-object v0, p0, Lus/zoom/zrc/login/LoginLicenseKeyFragment$KeyCodeViewWrapper;->mInputView:Lus/zoom/zrc/base/widget/ZRCEditText;

    if-eqz v0, :cond_1

    .line 228
    invoke-virtual {v0}, Lus/zoom/zrc/base/widget/ZRCEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lus/zoom/zrc/login/util/LoginLicenseKeyUtils;->normalizeLicenseKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    const-string v0, ""

    return-object v0
.end method

.method onKeyBoardClicked(ILjava/lang/String;)V
    .locals 2

    .line 262
    iget-object v0, p0, Lus/zoom/zrc/login/LoginLicenseKeyFragment$KeyCodeViewWrapper;->mKeyCodeView:Lus/zoom/zrc/login/widget/LoginKeyCodeView;

    if-eqz v0, :cond_0

    .line 263
    invoke-virtual {v0, p1, p2}, Lus/zoom/zrc/login/widget/LoginKeyCodeView;->clickKey(ILjava/lang/CharSequence;)V

    goto :goto_0

    .line 265
    :cond_0
    iget-object p2, p0, Lus/zoom/zrc/login/LoginLicenseKeyFragment$KeyCodeViewWrapper;->mInputView:Lus/zoom/zrc/base/widget/ZRCEditText;

    invoke-static {p2}, Lus/zoom/zrc/login/util/LoginLicenseKeyUtils;->getLicenseKeyLength(Landroid/widget/TextView;)I

    move-result p2

    const/16 v0, 0x10

    if-ne p2, v0, :cond_1

    const/16 p2, 0x43

    if-eq p2, p1, :cond_1

    .line 267
    iget-object p2, p0, Lus/zoom/zrc/login/LoginLicenseKeyFragment$KeyCodeViewWrapper;->mInputView:Lus/zoom/zrc/base/widget/ZRCEditText;

    const-string v0, ""

    invoke-virtual {p2, v0}, Lus/zoom/zrc/base/widget/ZRCEditText;->setText(Ljava/lang/CharSequence;)V

    .line 269
    :cond_1
    iget-object p2, p0, Lus/zoom/zrc/login/LoginLicenseKeyFragment$KeyCodeViewWrapper;->mInputView:Lus/zoom/zrc/base/widget/ZRCEditText;

    new-instance v0, Landroid/view/KeyEvent;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p1}, Landroid/view/KeyEvent;-><init>(II)V

    invoke-virtual {p2, v0}, Lus/zoom/zrc/base/widget/ZRCEditText;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    :goto_0
    return-void
.end method

.method onStart(Ljava/lang/String;)V
    .locals 1

    .line 244
    iget-object v0, p0, Lus/zoom/zrc/login/LoginLicenseKeyFragment$KeyCodeViewWrapper;->mKeyCodeView:Lus/zoom/zrc/login/widget/LoginKeyCodeView;

    if-eqz v0, :cond_0

    .line 245
    invoke-static {p1}, Lus/zoom/zrc/login/util/LoginLicenseKeyUtils;->normalizeLicenseKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 246
    iget-object v0, p0, Lus/zoom/zrc/login/LoginLicenseKeyFragment$KeyCodeViewWrapper;->mKeyCodeView:Lus/zoom/zrc/login/widget/LoginKeyCodeView;

    invoke-virtual {v0, p1}, Lus/zoom/zrc/login/widget/LoginKeyCodeView;->setText(Ljava/lang/String;)V

    goto :goto_0

    .line 247
    :cond_0
    iget-object v0, p0, Lus/zoom/zrc/login/LoginLicenseKeyFragment$KeyCodeViewWrapper;->mInputView:Lus/zoom/zrc/base/widget/ZRCEditText;

    if-eqz v0, :cond_1

    .line 248
    invoke-static {p1}, Lus/zoom/zrc/login/util/LoginLicenseKeyUtils;->formatLicenseKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 249
    iget-object v0, p0, Lus/zoom/zrc/login/LoginLicenseKeyFragment$KeyCodeViewWrapper;->mInputView:Lus/zoom/zrc/base/widget/ZRCEditText;

    invoke-virtual {v0, p1}, Lus/zoom/zrc/base/widget/ZRCEditText;->setText(Ljava/lang/CharSequence;)V

    .line 250
    iget-object v0, p0, Lus/zoom/zrc/login/LoginLicenseKeyFragment$KeyCodeViewWrapper;->mInputView:Lus/zoom/zrc/base/widget/ZRCEditText;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    invoke-virtual {v0, p1}, Lus/zoom/zrc/base/widget/ZRCEditText;->setSelection(I)V

    .line 251
    iget-object p1, p0, Lus/zoom/zrc/login/LoginLicenseKeyFragment$KeyCodeViewWrapper;->mInputView:Lus/zoom/zrc/base/widget/ZRCEditText;

    invoke-virtual {p1, p0}, Lus/zoom/zrc/base/widget/ZRCEditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    :cond_1
    :goto_0
    return-void
.end method

.method onStop()V
    .locals 1

    .line 256
    iget-object v0, p0, Lus/zoom/zrc/login/LoginLicenseKeyFragment$KeyCodeViewWrapper;->mInputView:Lus/zoom/zrc/base/widget/ZRCEditText;

    if-eqz v0, :cond_0

    .line 257
    invoke-virtual {v0, p0}, Lus/zoom/zrc/base/widget/ZRCEditText;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    :cond_0
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method onViewCreated()V
    .locals 2

    .line 234
    iget-object v0, p0, Lus/zoom/zrc/login/LoginLicenseKeyFragment$KeyCodeViewWrapper;->mKeyCodeView:Lus/zoom/zrc/login/widget/LoginKeyCodeView;

    if-eqz v0, :cond_0

    .line 235
    iget-object v1, p0, Lus/zoom/zrc/login/LoginLicenseKeyFragment$KeyCodeViewWrapper;->this$0:Lus/zoom/zrc/login/LoginLicenseKeyFragment;

    invoke-virtual {v0, v1}, Lus/zoom/zrc/login/widget/LoginKeyCodeView;->setKeyCodeListener(Lus/zoom/zrc/login/widget/LoginKeyCodeView$IZRCKeyCodeListener;)V

    goto :goto_0

    .line 237
    :cond_0
    iget-object v0, p0, Lus/zoom/zrc/login/LoginLicenseKeyFragment$KeyCodeViewWrapper;->mInputView:Lus/zoom/zrc/base/widget/ZRCEditText;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lus/zoom/zrc/base/widget/ZRCEditText;->setInputType(I)V

    .line 238
    iget-object v0, p0, Lus/zoom/zrc/login/LoginLicenseKeyFragment$KeyCodeViewWrapper;->mInputView:Lus/zoom/zrc/base/widget/ZRCEditText;

    invoke-virtual {v0}, Lus/zoom/zrc/base/widget/ZRCEditText;->setDisableClearIcon()V

    .line 239
    iget-object v0, p0, Lus/zoom/zrc/login/LoginLicenseKeyFragment$KeyCodeViewWrapper;->mInputView:Lus/zoom/zrc/base/widget/ZRCEditText;

    invoke-virtual {v0}, Lus/zoom/zrc/base/widget/ZRCEditText;->setDisableSelectionAndPaste()V

    :goto_0
    return-void
.end method
