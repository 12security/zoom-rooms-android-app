.class Lus/zoom/zrc/settings/ChangeWinPasswordDialog$4;
.super Ljava/lang/Object;
.source "ChangeWinPasswordDialog.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lus/zoom/zrc/settings/ChangeWinPasswordDialog;->onStart()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lus/zoom/zrc/settings/ChangeWinPasswordDialog;


# direct methods
.method constructor <init>(Lus/zoom/zrc/settings/ChangeWinPasswordDialog;)V
    .locals 0

    .line 159
    iput-object p1, p0, Lus/zoom/zrc/settings/ChangeWinPasswordDialog$4;->this$0:Lus/zoom/zrc/settings/ChangeWinPasswordDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 162
    iget-object v0, p0, Lus/zoom/zrc/settings/ChangeWinPasswordDialog$4;->this$0:Lus/zoom/zrc/settings/ChangeWinPasswordDialog;

    invoke-static {v0}, Lus/zoom/zrc/settings/ChangeWinPasswordDialog;->access$100(Lus/zoom/zrc/settings/ChangeWinPasswordDialog;)Landroid/widget/EditText;

    move-result-object v0

    invoke-static {v0}, Lus/zoom/zrc/utils/ZRCAccessibilityUtils;->sendAccessibilityFocusEvent(Landroid/view/View;)V

    return-void
.end method
