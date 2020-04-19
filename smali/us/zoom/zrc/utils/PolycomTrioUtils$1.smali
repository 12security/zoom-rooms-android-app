.class final Lus/zoom/zrc/utils/PolycomTrioUtils$1;
.super Ljava/lang/Object;
.source "PolycomTrioUtils.java"

# interfaces
.implements Landroid/view/View$OnSystemUiVisibilityChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lus/zoom/zrc/utils/PolycomTrioUtils;->setImmersiveModeForPolycomTrio(Landroid/view/Window;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$window:Landroid/view/Window;


# direct methods
.method constructor <init>(Landroid/view/Window;)V
    .locals 0

    .line 33
    iput-object p1, p0, Lus/zoom/zrc/utils/PolycomTrioUtils$1;->val$window:Landroid/view/Window;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSystemUiVisibilityChange(I)V
    .locals 1

    and-int/lit8 v0, p1, 0x2

    if-eqz v0, :cond_0

    and-int/lit16 p1, p1, 0x200

    if-nez p1, :cond_1

    .line 38
    :cond_0
    iget-object p1, p0, Lus/zoom/zrc/utils/PolycomTrioUtils$1;->val$window:Landroid/view/Window;

    invoke-static {p1}, Lus/zoom/zrc/utils/PolycomTrioUtils;->setImmersiveModeForPolycomTrio(Landroid/view/Window;)V

    :cond_1
    return-void
.end method
