.class Lus/zoom/androidlib/app/ZMFileListActivity$1;
.super Lus/zoom/androidlib/util/EventAction;
.source "ZMFileListActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lus/zoom/androidlib/app/ZMFileListActivity;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lus/zoom/androidlib/app/ZMFileListActivity;

.field final synthetic val$grantResults:[I

.field final synthetic val$permissions:[Ljava/lang/String;

.field final synthetic val$requestCode:I


# direct methods
.method constructor <init>(Lus/zoom/androidlib/app/ZMFileListActivity;Ljava/lang/String;I[Ljava/lang/String;[I)V
    .locals 0

    .line 379
    iput-object p1, p0, Lus/zoom/androidlib/app/ZMFileListActivity$1;->this$0:Lus/zoom/androidlib/app/ZMFileListActivity;

    iput p3, p0, Lus/zoom/androidlib/app/ZMFileListActivity$1;->val$requestCode:I

    iput-object p4, p0, Lus/zoom/androidlib/app/ZMFileListActivity$1;->val$permissions:[Ljava/lang/String;

    iput-object p5, p0, Lus/zoom/androidlib/app/ZMFileListActivity$1;->val$grantResults:[I

    invoke-direct {p0, p2}, Lus/zoom/androidlib/util/EventAction;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run(Lus/zoom/androidlib/util/IUIElement;)V
    .locals 3

    .line 383
    check-cast p1, Lus/zoom/androidlib/app/ZMFileListActivity;

    iget v0, p0, Lus/zoom/androidlib/app/ZMFileListActivity$1;->val$requestCode:I

    iget-object v1, p0, Lus/zoom/androidlib/app/ZMFileListActivity$1;->val$permissions:[Ljava/lang/String;

    iget-object v2, p0, Lus/zoom/androidlib/app/ZMFileListActivity$1;->val$grantResults:[I

    invoke-virtual {p1, v0, v1, v2}, Lus/zoom/androidlib/app/ZMFileListActivity;->handleRequestPermissionResult(I[Ljava/lang/String;[I)V

    return-void
.end method
