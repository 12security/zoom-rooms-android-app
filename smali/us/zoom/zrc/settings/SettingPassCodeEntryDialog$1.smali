.class Lus/zoom/zrc/settings/SettingPassCodeEntryDialog$1;
.super Ljava/lang/Object;
.source "SettingPassCodeEntryDialog.java"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lus/zoom/zrc/settings/SettingPassCodeEntryDialog;->onStart()V
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

    .line 151
    iput-object p1, p0, Lus/zoom/zrc/settings/SettingPassCodeEntryDialog$1;->this$0:Lus/zoom/zrc/settings/SettingPassCodeEntryDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 0

    const/4 p1, 0x6

    if-ne p2, p1, :cond_0

    .line 155
    iget-object p1, p0, Lus/zoom/zrc/settings/SettingPassCodeEntryDialog$1;->this$0:Lus/zoom/zrc/settings/SettingPassCodeEntryDialog;

    invoke-virtual {p1}, Lus/zoom/zrc/settings/SettingPassCodeEntryDialog;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object p2, p0, Lus/zoom/zrc/settings/SettingPassCodeEntryDialog$1;->this$0:Lus/zoom/zrc/settings/SettingPassCodeEntryDialog;

    invoke-static {p2}, Lus/zoom/zrc/settings/SettingPassCodeEntryDialog;->access$000(Lus/zoom/zrc/settings/SettingPassCodeEntryDialog;)Landroid/widget/EditText;

    move-result-object p2

    invoke-static {p1, p2}, Lus/zoom/androidlib/util/UIUtil;->closeSoftKeyboard(Landroid/content/Context;Landroid/view/View;)V

    .line 156
    iget-object p1, p0, Lus/zoom/zrc/settings/SettingPassCodeEntryDialog$1;->this$0:Lus/zoom/zrc/settings/SettingPassCodeEntryDialog;

    invoke-static {p1}, Lus/zoom/zrc/settings/SettingPassCodeEntryDialog;->access$100(Lus/zoom/zrc/settings/SettingPassCodeEntryDialog;)Landroid/widget/Button;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Button;->performClick()Z

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
