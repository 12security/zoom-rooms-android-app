.class Lus/zoom/zrc/settings/SettingPassCodeEntryDialog$2;
.super Ljava/lang/Object;
.source "SettingPassCodeEntryDialog.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lus/zoom/zrc/settings/SettingPassCodeEntryDialog;->confirmAction()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lus/zoom/zrc/settings/SettingPassCodeEntryDialog;


# direct methods
.method constructor <init>(Lus/zoom/zrc/settings/SettingPassCodeEntryDialog;)V
    .locals 0

    .line 208
    iput-object p1, p0, Lus/zoom/zrc/settings/SettingPassCodeEntryDialog$2;->this$0:Lus/zoom/zrc/settings/SettingPassCodeEntryDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 211
    iget-object v0, p0, Lus/zoom/zrc/settings/SettingPassCodeEntryDialog$2;->this$0:Lus/zoom/zrc/settings/SettingPassCodeEntryDialog;

    invoke-static {v0}, Lus/zoom/zrc/settings/SettingPassCodeEntryDialog;->access$000(Lus/zoom/zrc/settings/SettingPassCodeEntryDialog;)Landroid/widget/EditText;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 212
    iget-object v0, p0, Lus/zoom/zrc/settings/SettingPassCodeEntryDialog$2;->this$0:Lus/zoom/zrc/settings/SettingPassCodeEntryDialog;

    invoke-static {v0}, Lus/zoom/zrc/settings/SettingPassCodeEntryDialog;->access$200(Lus/zoom/zrc/settings/SettingPassCodeEntryDialog;)V

    .line 213
    iget-object v0, p0, Lus/zoom/zrc/settings/SettingPassCodeEntryDialog$2;->this$0:Lus/zoom/zrc/settings/SettingPassCodeEntryDialog;

    invoke-virtual {v0}, Lus/zoom/zrc/settings/SettingPassCodeEntryDialog;->safeDismiss()V

    return-void
.end method
