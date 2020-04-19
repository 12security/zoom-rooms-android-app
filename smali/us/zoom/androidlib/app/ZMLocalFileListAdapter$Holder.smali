.class Lus/zoom/androidlib/app/ZMLocalFileListAdapter$Holder;
.super Ljava/lang/Object;
.source "ZMLocalFileListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lus/zoom/androidlib/app/ZMLocalFileListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Holder"
.end annotation


# instance fields
.field mDisplayName:Landroid/widget/TextView;

.field mIcon:Landroid/widget/ImageView;

.field final synthetic this$0:Lus/zoom/androidlib/app/ZMLocalFileListAdapter;


# direct methods
.method private constructor <init>(Lus/zoom/androidlib/app/ZMLocalFileListAdapter;)V
    .locals 0

    .line 402
    iput-object p1, p0, Lus/zoom/androidlib/app/ZMLocalFileListAdapter$Holder;->this$0:Lus/zoom/androidlib/app/ZMLocalFileListAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lus/zoom/androidlib/app/ZMLocalFileListAdapter;Lus/zoom/androidlib/app/ZMLocalFileListAdapter$1;)V
    .locals 0

    .line 402
    invoke-direct {p0, p1}, Lus/zoom/androidlib/app/ZMLocalFileListAdapter$Holder;-><init>(Lus/zoom/androidlib/app/ZMLocalFileListAdapter;)V

    return-void
.end method
