.class final Lus/zoom/androidlib/app/ZMActivityCompat$1;
.super Ljava/lang/Object;
.source "ZMActivityCompat.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lus/zoom/androidlib/app/ZMActivityCompat;->requestPermissionsCompat(Lus/zoom/androidlib/app/ZMActivity;[Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$activity:Lus/zoom/androidlib/app/ZMActivity;

.field final synthetic val$permissions:[Ljava/lang/String;

.field final synthetic val$requestCode:I


# direct methods
.method constructor <init>([Ljava/lang/String;Lus/zoom/androidlib/app/ZMActivity;I)V
    .locals 0

    .line 38
    iput-object p1, p0, Lus/zoom/androidlib/app/ZMActivityCompat$1;->val$permissions:[Ljava/lang/String;

    iput-object p2, p0, Lus/zoom/androidlib/app/ZMActivityCompat$1;->val$activity:Lus/zoom/androidlib/app/ZMActivity;

    iput p3, p0, Lus/zoom/androidlib/app/ZMActivityCompat$1;->val$requestCode:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 42
    iget-object v0, p0, Lus/zoom/androidlib/app/ZMActivityCompat$1;->val$permissions:[Ljava/lang/String;

    array-length v0, v0

    new-array v0, v0, [I

    .line 44
    iget-object v1, p0, Lus/zoom/androidlib/app/ZMActivityCompat$1;->val$activity:Lus/zoom/androidlib/app/ZMActivity;

    invoke-virtual {v1}, Lus/zoom/androidlib/app/ZMActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 45
    iget-object v2, p0, Lus/zoom/androidlib/app/ZMActivityCompat$1;->val$activity:Lus/zoom/androidlib/app/ZMActivity;

    invoke-virtual {v2}, Lus/zoom/androidlib/app/ZMActivity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 47
    iget-object v3, p0, Lus/zoom/androidlib/app/ZMActivityCompat$1;->val$permissions:[Ljava/lang/String;

    array-length v3, v3

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_0

    .line 49
    iget-object v5, p0, Lus/zoom/androidlib/app/ZMActivityCompat$1;->val$permissions:[Ljava/lang/String;

    aget-object v5, v5, v4

    invoke-virtual {v1, v5, v2}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    aput v5, v0, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 53
    :cond_0
    iget-object v1, p0, Lus/zoom/androidlib/app/ZMActivityCompat$1;->val$activity:Lus/zoom/androidlib/app/ZMActivity;

    iget v2, p0, Lus/zoom/androidlib/app/ZMActivityCompat$1;->val$requestCode:I

    iget-object v3, p0, Lus/zoom/androidlib/app/ZMActivityCompat$1;->val$permissions:[Ljava/lang/String;

    invoke-virtual {v1, v2, v3, v0}, Lus/zoom/androidlib/app/ZMActivity;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    return-void
.end method
