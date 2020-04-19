.class public Landroidx/constraintlayout/solver/widgets/ConstraintHorizontalLayout;
.super Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;
.source "ConstraintHorizontalLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/constraintlayout/solver/widgets/ConstraintHorizontalLayout$ContentAlignment;
    }
.end annotation


# instance fields
.field private mAlignment:Landroidx/constraintlayout/solver/widgets/ConstraintHorizontalLayout$ContentAlignment;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 35
    invoke-direct {p0}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;-><init>()V

    .line 30
    sget-object v0, Landroidx/constraintlayout/solver/widgets/ConstraintHorizontalLayout$ContentAlignment;->MIDDLE:Landroidx/constraintlayout/solver/widgets/ConstraintHorizontalLayout$ContentAlignment;

    iput-object v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintHorizontalLayout;->mAlignment:Landroidx/constraintlayout/solver/widgets/ConstraintHorizontalLayout$ContentAlignment;

    return-void
.end method

.method public constructor <init>(II)V
    .locals 0

    .line 54
    invoke-direct {p0, p1, p2}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;-><init>(II)V

    .line 30
    sget-object p1, Landroidx/constraintlayout/solver/widgets/ConstraintHorizontalLayout$ContentAlignment;->MIDDLE:Landroidx/constraintlayout/solver/widgets/ConstraintHorizontalLayout$ContentAlignment;

    iput-object p1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintHorizontalLayout;->mAlignment:Landroidx/constraintlayout/solver/widgets/ConstraintHorizontalLayout$ContentAlignment;

    return-void
.end method

.method public constructor <init>(IIII)V
    .locals 0

    .line 45
    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;-><init>(IIII)V

    .line 30
    sget-object p1, Landroidx/constraintlayout/solver/widgets/ConstraintHorizontalLayout$ContentAlignment;->MIDDLE:Landroidx/constraintlayout/solver/widgets/ConstraintHorizontalLayout$ContentAlignment;

    iput-object p1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintHorizontalLayout;->mAlignment:Landroidx/constraintlayout/solver/widgets/ConstraintHorizontalLayout$ContentAlignment;

    return-void
.end method


# virtual methods
.method public addToSolver(Landroidx/constraintlayout/solver/LinearSystem;)V
    .locals 9

    .line 63
    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintHorizontalLayout;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x0

    .line 65
    iget-object v1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintHorizontalLayout;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    move-object v4, p0

    :goto_0
    if-ge v0, v1, :cond_2

    .line 66
    iget-object v2, p0, Landroidx/constraintlayout/solver/widgets/ConstraintHorizontalLayout;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v8, v2

    check-cast v8, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    if-eq v4, p0, :cond_0

    .line 68
    sget-object v2, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->LEFT:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    sget-object v3, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->RIGHT:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v8, v2, v4, v3}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->connect(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;Landroidx/constraintlayout/solver/widgets/ConstraintWidget;Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)V

    .line 69
    sget-object v2, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->RIGHT:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    sget-object v3, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->LEFT:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v4, v2, v8, v3}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->connect(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;Landroidx/constraintlayout/solver/widgets/ConstraintWidget;Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)V

    goto :goto_2

    .line 71
    :cond_0
    sget-object v2, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Strength;->STRONG:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Strength;

    .line 72
    iget-object v3, p0, Landroidx/constraintlayout/solver/widgets/ConstraintHorizontalLayout;->mAlignment:Landroidx/constraintlayout/solver/widgets/ConstraintHorizontalLayout$ContentAlignment;

    sget-object v5, Landroidx/constraintlayout/solver/widgets/ConstraintHorizontalLayout$ContentAlignment;->END:Landroidx/constraintlayout/solver/widgets/ConstraintHorizontalLayout$ContentAlignment;

    if-ne v3, v5, :cond_1

    .line 73
    sget-object v2, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Strength;->WEAK:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Strength;

    move-object v7, v2

    goto :goto_1

    :cond_1
    move-object v7, v2

    .line 75
    :goto_1
    sget-object v3, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->LEFT:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    sget-object v5, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->LEFT:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    const/4 v6, 0x0

    move-object v2, v8

    invoke-virtual/range {v2 .. v7}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->connect(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;Landroidx/constraintlayout/solver/widgets/ConstraintWidget;Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;ILandroidx/constraintlayout/solver/widgets/ConstraintAnchor$Strength;)V

    .line 78
    :goto_2
    sget-object v2, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->TOP:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    sget-object v3, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->TOP:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v8, v2, p0, v3}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->connect(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;Landroidx/constraintlayout/solver/widgets/ConstraintWidget;Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)V

    .line 79
    sget-object v2, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->BOTTOM:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    sget-object v3, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->BOTTOM:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v8, v2, p0, v3}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->connect(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;Landroidx/constraintlayout/solver/widgets/ConstraintWidget;Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)V

    add-int/lit8 v0, v0, 0x1

    move-object v4, v8

    goto :goto_0

    :cond_2
    if-eq v4, p0, :cond_4

    .line 83
    sget-object v0, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Strength;->STRONG:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Strength;

    .line 84
    iget-object v1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintHorizontalLayout;->mAlignment:Landroidx/constraintlayout/solver/widgets/ConstraintHorizontalLayout$ContentAlignment;

    sget-object v2, Landroidx/constraintlayout/solver/widgets/ConstraintHorizontalLayout$ContentAlignment;->BEGIN:Landroidx/constraintlayout/solver/widgets/ConstraintHorizontalLayout$ContentAlignment;

    if-ne v1, v2, :cond_3

    .line 85
    sget-object v0, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Strength;->WEAK:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Strength;

    move-object v7, v0

    goto :goto_3

    :cond_3
    move-object v7, v0

    .line 87
    :goto_3
    sget-object v3, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->RIGHT:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    sget-object v5, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->RIGHT:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    const/4 v6, 0x0

    move-object v2, v4

    move-object v4, p0

    invoke-virtual/range {v2 .. v7}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->connect(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;Landroidx/constraintlayout/solver/widgets/ConstraintWidget;Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;ILandroidx/constraintlayout/solver/widgets/ConstraintAnchor$Strength;)V

    .line 91
    :cond_4
    invoke-super {p0, p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->addToSolver(Landroidx/constraintlayout/solver/LinearSystem;)V

    return-void
.end method
