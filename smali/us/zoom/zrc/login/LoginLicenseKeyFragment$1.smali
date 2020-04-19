.class Lus/zoom/zrc/login/LoginLicenseKeyFragment$1;
.super Ljava/lang/Object;
.source "LoginLicenseKeyFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lus/zoom/zrc/login/LoginLicenseKeyFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lus/zoom/zrc/login/LoginLicenseKeyFragment;


# direct methods
.method constructor <init>(Lus/zoom/zrc/login/LoginLicenseKeyFragment;)V
    .locals 0

    .line 72
    iput-object p1, p0, Lus/zoom/zrc/login/LoginLicenseKeyFragment$1;->this$0:Lus/zoom/zrc/login/LoginLicenseKeyFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 75
    invoke-static {}, Lus/zoom/zrc/login/LoginUsageTrack;->sendEnterLicenseKeyHelp()V

    .line 76
    iget-object p1, p0, Lus/zoom/zrc/login/LoginLicenseKeyFragment$1;->this$0:Lus/zoom/zrc/login/LoginLicenseKeyFragment;

    invoke-static {p1}, Lus/zoom/zrc/login/LoginLicenseKeyFragment;->access$000(Lus/zoom/zrc/login/LoginLicenseKeyFragment;)V

    return-void
.end method
