.class Lus/zoom/zrc/base/app/ZRCHelpDialog$1;
.super Ljava/lang/Object;
.source "ZRCHelpDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lus/zoom/zrc/base/app/ZRCHelpDialog;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lus/zoom/zrc/base/app/ZRCHelpDialog;


# direct methods
.method constructor <init>(Lus/zoom/zrc/base/app/ZRCHelpDialog;)V
    .locals 0

    .line 31
    iput-object p1, p0, Lus/zoom/zrc/base/app/ZRCHelpDialog$1;->this$0:Lus/zoom/zrc/base/app/ZRCHelpDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 34
    iget-object p1, p0, Lus/zoom/zrc/base/app/ZRCHelpDialog$1;->this$0:Lus/zoom/zrc/base/app/ZRCHelpDialog;

    invoke-virtual {p1}, Lus/zoom/zrc/base/app/ZRCHelpDialog;->dismiss()V

    return-void
.end method
