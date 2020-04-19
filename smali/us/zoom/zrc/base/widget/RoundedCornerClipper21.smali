.class public Lus/zoom/zrc/base/widget/RoundedCornerClipper21;
.super Lus/zoom/zrc/base/widget/AbstarctRoundedCornerClipper;
.source "RoundedCornerClipper21.java"


# annotations
.annotation build Landroidx/annotation/RequiresApi;
    api = 0x15
.end annotation


# direct methods
.method constructor <init>(Landroid/view/View;F)V
    .locals 0

    .line 18
    invoke-direct {p0, p1, p2}, Lus/zoom/zrc/base/widget/AbstarctRoundedCornerClipper;-><init>(Landroid/view/View;F)V

    .line 19
    invoke-direct {p0, p1}, Lus/zoom/zrc/base/widget/RoundedCornerClipper21;->init(Landroid/view/View;)V

    return-void
.end method

.method private init(Landroid/view/View;)V
    .locals 1
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x1

    .line 23
    invoke-virtual {p1, v0}, Landroid/view/View;->setClipToOutline(Z)V

    .line 24
    new-instance v0, Lus/zoom/zrc/base/widget/RoundedCornerClipper21$1;

    invoke-direct {v0, p0}, Lus/zoom/zrc/base/widget/RoundedCornerClipper21$1;-><init>(Lus/zoom/zrc/base/widget/RoundedCornerClipper21;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    return-void
.end method
