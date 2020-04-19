.class Lus/zoom/androidlib/app/ZMAdapterOsBugHelper$1;
.super Ljava/lang/Object;
.source "ZMAdapterOsBugHelper.java"

# interfaces
.implements Landroid/app/AppOpsManager$OnOpChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lus/zoom/androidlib/app/ZMAdapterOsBugHelper;->startListenOverlayPermissionChange(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lus/zoom/androidlib/app/ZMAdapterOsBugHelper;

.field final synthetic val$myPackageName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lus/zoom/androidlib/app/ZMAdapterOsBugHelper;Ljava/lang/String;)V
    .locals 0

    .line 44
    iput-object p1, p0, Lus/zoom/androidlib/app/ZMAdapterOsBugHelper$1;->this$0:Lus/zoom/androidlib/app/ZMAdapterOsBugHelper;

    iput-object p2, p0, Lus/zoom/androidlib/app/ZMAdapterOsBugHelper$1;->val$myPackageName:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onOpChanged(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 48
    iget-object v0, p0, Lus/zoom/androidlib/app/ZMAdapterOsBugHelper$1;->val$myPackageName:Ljava/lang/String;

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    const-string p2, "android:system_alert_window"

    .line 49
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 50
    iget-object p1, p0, Lus/zoom/androidlib/app/ZMAdapterOsBugHelper$1;->this$0:Lus/zoom/androidlib/app/ZMAdapterOsBugHelper;

    invoke-static {p1}, Lus/zoom/androidlib/app/ZMAdapterOsBugHelper;->access$000(Lus/zoom/androidlib/app/ZMAdapterOsBugHelper;)Z

    move-result p2

    xor-int/lit8 p2, p2, 0x1

    invoke-static {p1, p2}, Lus/zoom/androidlib/app/ZMAdapterOsBugHelper;->access$002(Lus/zoom/androidlib/app/ZMAdapterOsBugHelper;Z)Z

    :cond_0
    return-void
.end method
