.class final Lus/zoom/androidlib/util/AndroidAppUtil$1;
.super Ljava/lang/Object;
.source "AndroidAppUtil.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lus/zoom/androidlib/util/AndroidAppUtil;->selectImageNoDefault(Landroidx/fragment/app/Fragment;Landroid/app/Activity;II)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$_activity:Landroid/app/Activity;

.field final synthetic val$adapter:Lus/zoom/androidlib/util/AndroidAppUtil$AppListAdapter;

.field final synthetic val$fragment:Landroidx/fragment/app/Fragment;

.field final synthetic val$requestCode:I


# direct methods
.method constructor <init>(Lus/zoom/androidlib/util/AndroidAppUtil$AppListAdapter;Landroid/app/Activity;Landroidx/fragment/app/Fragment;I)V
    .locals 0

    .line 1764
    iput-object p1, p0, Lus/zoom/androidlib/util/AndroidAppUtil$1;->val$adapter:Lus/zoom/androidlib/util/AndroidAppUtil$AppListAdapter;

    iput-object p2, p0, Lus/zoom/androidlib/util/AndroidAppUtil$1;->val$_activity:Landroid/app/Activity;

    iput-object p3, p0, Lus/zoom/androidlib/util/AndroidAppUtil$1;->val$fragment:Landroidx/fragment/app/Fragment;

    iput p4, p0, Lus/zoom/androidlib/util/AndroidAppUtil$1;->val$requestCode:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .line 1768
    iget-object p1, p0, Lus/zoom/androidlib/util/AndroidAppUtil$1;->val$adapter:Lus/zoom/androidlib/util/AndroidAppUtil$AppListAdapter;

    invoke-virtual {p1, p2}, Lus/zoom/androidlib/util/AndroidAppUtil$AppListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lus/zoom/androidlib/util/AndroidAppUtil$AppItem;

    .line 1769
    iget-object p2, p0, Lus/zoom/androidlib/util/AndroidAppUtil$1;->val$_activity:Landroid/app/Activity;

    iget-object v0, p0, Lus/zoom/androidlib/util/AndroidAppUtil$1;->val$fragment:Landroidx/fragment/app/Fragment;

    iget v1, p0, Lus/zoom/androidlib/util/AndroidAppUtil$1;->val$requestCode:I

    invoke-static {p2, v0, p1, v1}, Lus/zoom/androidlib/util/AndroidAppUtil;->access$000(Landroid/app/Activity;Landroidx/fragment/app/Fragment;Lus/zoom/androidlib/util/AndroidAppUtil$AppItem;I)V

    return-void
.end method
