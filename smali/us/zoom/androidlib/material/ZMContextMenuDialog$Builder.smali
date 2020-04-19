.class public Lus/zoom/androidlib/material/ZMContextMenuDialog$Builder;
.super Ljava/lang/Object;
.source "ZMContextMenuDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lus/zoom/androidlib/material/ZMContextMenuDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private adapter:Lus/zoom/androidlib/material/ZMContextMenuListAdapter;

.field private context:Landroid/content/Context;

.field private hasItemDecoration:Z

.field private listener:Lus/zoom/androidlib/material/ZMContextMenuDialog$OnContextMenuClickListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 142
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 138
    iput-boolean v0, p0, Lus/zoom/androidlib/material/ZMContextMenuDialog$Builder;->hasItemDecoration:Z

    .line 143
    iput-object p1, p0, Lus/zoom/androidlib/material/ZMContextMenuDialog$Builder;->context:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$000(Lus/zoom/androidlib/material/ZMContextMenuDialog$Builder;)Z
    .locals 0

    .line 136
    iget-boolean p0, p0, Lus/zoom/androidlib/material/ZMContextMenuDialog$Builder;->hasItemDecoration:Z

    return p0
.end method

.method static synthetic access$100(Lus/zoom/androidlib/material/ZMContextMenuDialog$Builder;)Lus/zoom/androidlib/material/ZMContextMenuListAdapter;
    .locals 0

    .line 136
    iget-object p0, p0, Lus/zoom/androidlib/material/ZMContextMenuDialog$Builder;->adapter:Lus/zoom/androidlib/material/ZMContextMenuListAdapter;

    return-object p0
.end method

.method static synthetic access$200(Lus/zoom/androidlib/material/ZMContextMenuDialog$Builder;)Lus/zoom/androidlib/material/ZMContextMenuDialog$OnContextMenuClickListener;
    .locals 0

    .line 136
    iget-object p0, p0, Lus/zoom/androidlib/material/ZMContextMenuDialog$Builder;->listener:Lus/zoom/androidlib/material/ZMContextMenuDialog$OnContextMenuClickListener;

    return-object p0
.end method

.method static synthetic access$300(Lus/zoom/androidlib/material/ZMContextMenuDialog$Builder;)Landroid/content/Context;
    .locals 0

    .line 136
    iget-object p0, p0, Lus/zoom/androidlib/material/ZMContextMenuDialog$Builder;->context:Landroid/content/Context;

    return-object p0
.end method


# virtual methods
.method public build()Lus/zoom/androidlib/material/ZMContextMenuDialog;
    .locals 1

    .line 158
    invoke-static {p0}, Lus/zoom/androidlib/material/ZMContextMenuDialog;->access$400(Lus/zoom/androidlib/material/ZMContextMenuDialog$Builder;)Lus/zoom/androidlib/material/ZMContextMenuDialog;

    move-result-object v0

    return-object v0
.end method

.method public setAdapter(Lus/zoom/androidlib/material/ZMContextMenuListAdapter;Lus/zoom/androidlib/material/ZMContextMenuDialog$OnContextMenuClickListener;)Lus/zoom/androidlib/material/ZMContextMenuDialog$Builder;
    .locals 0

    .line 147
    iput-object p1, p0, Lus/zoom/androidlib/material/ZMContextMenuDialog$Builder;->adapter:Lus/zoom/androidlib/material/ZMContextMenuListAdapter;

    .line 148
    iput-object p2, p0, Lus/zoom/androidlib/material/ZMContextMenuDialog$Builder;->listener:Lus/zoom/androidlib/material/ZMContextMenuDialog$OnContextMenuClickListener;

    return-object p0
.end method

.method public setHasItemDecoration(Z)Lus/zoom/androidlib/material/ZMContextMenuDialog$Builder;
    .locals 0

    .line 153
    iput-boolean p1, p0, Lus/zoom/androidlib/material/ZMContextMenuDialog$Builder;->hasItemDecoration:Z

    return-object p0
.end method

.method public show(Landroidx/fragment/app/FragmentManager;)Lus/zoom/androidlib/material/ZMContextMenuDialog;
    .locals 1

    .line 162
    invoke-virtual {p0}, Lus/zoom/androidlib/material/ZMContextMenuDialog$Builder;->build()Lus/zoom/androidlib/material/ZMContextMenuDialog;

    move-result-object v0

    .line 163
    invoke-virtual {v0, p1}, Lus/zoom/androidlib/material/ZMContextMenuDialog;->show(Landroidx/fragment/app/FragmentManager;)V

    return-object v0
.end method
