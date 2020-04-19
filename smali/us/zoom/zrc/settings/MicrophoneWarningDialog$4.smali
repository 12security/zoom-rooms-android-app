.class Lus/zoom/zrc/settings/MicrophoneWarningDialog$4;
.super Ljava/lang/Object;
.source "MicrophoneWarningDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lus/zoom/zrc/settings/MicrophoneWarningDialog;->onUpdateContent()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lus/zoom/zrc/settings/MicrophoneWarningDialog;


# direct methods
.method constructor <init>(Lus/zoom/zrc/settings/MicrophoneWarningDialog;)V
    .locals 0

    .line 240
    iput-object p1, p0, Lus/zoom/zrc/settings/MicrophoneWarningDialog$4;->this$0:Lus/zoom/zrc/settings/MicrophoneWarningDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 243
    iget-object p2, p0, Lus/zoom/zrc/settings/MicrophoneWarningDialog$4;->this$0:Lus/zoom/zrc/settings/MicrophoneWarningDialog;

    sget v0, Lus/zoom/zrcbox/R$string;->close:I

    invoke-virtual {p2, v0}, Lus/zoom/zrc/settings/MicrophoneWarningDialog;->getString(I)Ljava/lang/String;

    move-result-object p2

    iget-object v0, p0, Lus/zoom/zrc/settings/MicrophoneWarningDialog$4;->this$0:Lus/zoom/zrc/settings/MicrophoneWarningDialog;

    invoke-static {v0}, Lus/zoom/zrc/settings/MicrophoneWarningDialog;->access$200(Lus/zoom/zrc/settings/MicrophoneWarningDialog;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_0

    iget-object p2, p0, Lus/zoom/zrc/settings/MicrophoneWarningDialog$4;->this$0:Lus/zoom/zrc/settings/MicrophoneWarningDialog;

    sget v0, Lus/zoom/zrcbox/R$string;->cancel:I

    invoke-virtual {p2, v0}, Lus/zoom/zrc/settings/MicrophoneWarningDialog;->getString(I)Ljava/lang/String;

    move-result-object p2

    iget-object v0, p0, Lus/zoom/zrc/settings/MicrophoneWarningDialog$4;->this$0:Lus/zoom/zrc/settings/MicrophoneWarningDialog;

    invoke-static {v0}, Lus/zoom/zrc/settings/MicrophoneWarningDialog;->access$200(Lus/zoom/zrc/settings/MicrophoneWarningDialog;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_0

    iget-object p2, p0, Lus/zoom/zrc/settings/MicrophoneWarningDialog$4;->this$0:Lus/zoom/zrc/settings/MicrophoneWarningDialog;

    invoke-static {p2}, Lus/zoom/zrc/settings/MicrophoneWarningDialog;->access$100(Lus/zoom/zrc/settings/MicrophoneWarningDialog;)Lus/zoom/zrc/settings/MicrophoneWarningDialog$OnWarningDialogListener;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 244
    iget-object p2, p0, Lus/zoom/zrc/settings/MicrophoneWarningDialog$4;->this$0:Lus/zoom/zrc/settings/MicrophoneWarningDialog;

    invoke-static {p2}, Lus/zoom/zrc/settings/MicrophoneWarningDialog;->access$100(Lus/zoom/zrc/settings/MicrophoneWarningDialog;)Lus/zoom/zrc/settings/MicrophoneWarningDialog$OnWarningDialogListener;

    move-result-object p2

    invoke-interface {p2, p1}, Lus/zoom/zrc/settings/MicrophoneWarningDialog$OnWarningDialogListener;->onActionClick(Landroid/content/DialogInterface;)V

    .line 246
    :cond_0
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method
