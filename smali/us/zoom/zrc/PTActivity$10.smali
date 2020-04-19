.class Lus/zoom/zrc/PTActivity$10;
.super Ljava/lang/Object;
.source "PTActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lus/zoom/zrc/PTActivity;->showEnterPasswordDialog(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lus/zoom/zrc/PTActivity;

.field final synthetic val$etPassword:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Lus/zoom/zrc/PTActivity;Landroid/widget/EditText;)V
    .locals 0

    .line 812
    iput-object p1, p0, Lus/zoom/zrc/PTActivity$10;->this$0:Lus/zoom/zrc/PTActivity;

    iput-object p2, p0, Lus/zoom/zrc/PTActivity$10;->val$etPassword:Landroid/widget/EditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .line 815
    iget-object p2, p0, Lus/zoom/zrc/PTActivity$10;->val$etPassword:Landroid/widget/EditText;

    invoke-virtual {p2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p2

    if-eqz p2, :cond_0

    iget-object p2, p0, Lus/zoom/zrc/PTActivity$10;->val$etPassword:Landroid/widget/EditText;

    invoke-virtual {p2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_0

    .line 816
    invoke-static {}, Lus/zoom/zrcsdk/ZRCSdk;->getInstance()Lus/zoom/zrcsdk/ZRCSdk;

    move-result-object p2

    invoke-virtual {p2}, Lus/zoom/zrcsdk/ZRCSdk;->getConfApp()Lus/zoom/zrcsdk/ConfApp;

    move-result-object p2

    iget-object v0, p0, Lus/zoom/zrc/PTActivity$10;->val$etPassword:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lus/zoom/zrcsdk/ConfApp;->sendMeetingPassword(Ljava/lang/String;)I

    .line 817
    iget-object p2, p0, Lus/zoom/zrc/PTActivity$10;->this$0:Lus/zoom/zrc/PTActivity;

    const-string v0, "input_method"

    invoke-virtual {p2, v0}, Lus/zoom/zrc/PTActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/inputmethod/InputMethodManager;

    if-eqz p2, :cond_0

    .line 819
    iget-object v0, p0, Lus/zoom/zrc/PTActivity$10;->val$etPassword:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 822
    :cond_0
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method
