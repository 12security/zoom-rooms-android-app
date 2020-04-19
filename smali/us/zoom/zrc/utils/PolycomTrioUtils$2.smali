.class final Lus/zoom/zrc/utils/PolycomTrioUtils$2;
.super Ljava/lang/Object;
.source "PolycomTrioUtils.java"

# interfaces
.implements Landroid/view/View$OnSystemUiVisibilityChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lus/zoom/zrc/utils/PolycomTrioUtils;->setImmersiveModeForPolycomTrio(Landroid/widget/PopupWindow;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$window:Landroid/widget/PopupWindow;


# direct methods
.method constructor <init>(Landroid/widget/PopupWindow;)V
    .locals 0

    .line 82
    iput-object p1, p0, Lus/zoom/zrc/utils/PolycomTrioUtils$2;->val$window:Landroid/widget/PopupWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSystemUiVisibilityChange(I)V
    .locals 1

    and-int/lit8 v0, p1, 0x2

    if-eqz v0, :cond_0

    and-int/lit16 p1, p1, 0x800

    if-nez p1, :cond_1

    .line 87
    :cond_0
    iget-object p1, p0, Lus/zoom/zrc/utils/PolycomTrioUtils$2;->val$window:Landroid/widget/PopupWindow;

    invoke-static {p1}, Lus/zoom/zrc/utils/PolycomTrioUtils;->setImmersiveModeForPolycomTrio(Landroid/widget/PopupWindow;)V

    :cond_1
    return-void
.end method
