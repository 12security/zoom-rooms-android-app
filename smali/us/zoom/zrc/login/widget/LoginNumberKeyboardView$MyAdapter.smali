.class Lus/zoom/zrc/login/widget/LoginNumberKeyboardView$MyAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "LoginNumberKeyboardView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lus/zoom/zrc/login/widget/LoginNumberKeyboardView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lus/zoom/zrc/login/widget/LoginNumberKeyboardView$ViewHolder;",
        ">;",
        "Landroid/view/View$OnClickListener;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lus/zoom/zrc/login/widget/LoginNumberKeyboardView;


# direct methods
.method private constructor <init>(Lus/zoom/zrc/login/widget/LoginNumberKeyboardView;)V
    .locals 0

    .line 142
    iput-object p1, p0, Lus/zoom/zrc/login/widget/LoginNumberKeyboardView$MyAdapter;->this$0:Lus/zoom/zrc/login/widget/LoginNumberKeyboardView;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lus/zoom/zrc/login/widget/LoginNumberKeyboardView;Lus/zoom/zrc/login/widget/LoginNumberKeyboardView$1;)V
    .locals 0

    .line 142
    invoke-direct {p0, p1}, Lus/zoom/zrc/login/widget/LoginNumberKeyboardView$MyAdapter;-><init>(Lus/zoom/zrc/login/widget/LoginNumberKeyboardView;)V

    return-void
.end method

.method private setupNormalPress(Lus/zoom/zrc/login/widget/LoginNumberKeyboardView$ViewHolder;)V
    .locals 2

    .line 226
    iget-object v0, p1, Lus/zoom/zrc/login/widget/LoginNumberKeyboardView$ViewHolder;->itemView:Landroid/view/View;

    new-instance v1, Lus/zoom/zrc/login/widget/LoginNumberKeyboardView$MyAdapter$1;

    invoke-direct {v1, p0, p1}, Lus/zoom/zrc/login/widget/LoginNumberKeyboardView$MyAdapter$1;-><init>(Lus/zoom/zrc/login/widget/LoginNumberKeyboardView$MyAdapter;Lus/zoom/zrc/login/widget/LoginNumberKeyboardView$ViewHolder;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    const/16 v0, 0xc

    return v0
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0
    .param p1    # Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    .line 142
    check-cast p1, Lus/zoom/zrc/login/widget/LoginNumberKeyboardView$ViewHolder;

    invoke-virtual {p0, p1, p2}, Lus/zoom/zrc/login/widget/LoginNumberKeyboardView$MyAdapter;->onBindViewHolder(Lus/zoom/zrc/login/widget/LoginNumberKeyboardView$ViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lus/zoom/zrc/login/widget/LoginNumberKeyboardView$ViewHolder;I)V
    .locals 6
    .param p1    # Lus/zoom/zrc/login/widget/LoginNumberKeyboardView$ViewHolder;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    const-string v0, ""

    const/16 v1, 0x9

    const/4 v2, 0x0

    if-ge p2, v1, :cond_0

    add-int/lit8 v0, p2, 0x8

    add-int/lit8 v3, p2, 0x1

    .line 161
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    move-object v5, v3

    move v3, v0

    move-object v0, v5

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    const/16 v4, 0xa

    if-ne p2, v4, :cond_1

    const/4 v3, 0x7

    const-string v0, "0"

    :cond_1
    const/4 v4, 0x4

    if-ne p2, v1, :cond_2

    const/16 v3, 0x43

    .line 171
    invoke-static {p1}, Lus/zoom/zrc/login/widget/LoginNumberKeyboardView$ViewHolder;->access$400(Lus/zoom/zrc/login/widget/LoginNumberKeyboardView$ViewHolder;)Landroid/widget/ImageView;

    move-result-object p2

    invoke-virtual {p2, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 172
    invoke-static {p1}, Lus/zoom/zrc/login/widget/LoginNumberKeyboardView$ViewHolder;->access$500(Lus/zoom/zrc/login/widget/LoginNumberKeyboardView$ViewHolder;)Landroid/widget/TextView;

    move-result-object p2

    invoke-virtual {p2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 173
    invoke-static {p1}, Lus/zoom/zrc/login/widget/LoginNumberKeyboardView$ViewHolder;->access$600(Lus/zoom/zrc/login/widget/LoginNumberKeyboardView$ViewHolder;)Landroid/widget/TextView;

    move-result-object p2

    invoke-virtual {p2, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 174
    invoke-static {p1}, Lus/zoom/zrc/login/widget/LoginNumberKeyboardView$ViewHolder;->access$600(Lus/zoom/zrc/login/widget/LoginNumberKeyboardView$ViewHolder;)Landroid/widget/TextView;

    move-result-object p2

    sget v1, Lus/zoom/zrcbox/R$string;->delete:I

    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setText(I)V

    .line 175
    invoke-static {p1}, Lus/zoom/zrc/login/widget/LoginNumberKeyboardView$ViewHolder;->access$400(Lus/zoom/zrc/login/widget/LoginNumberKeyboardView$ViewHolder;)Landroid/widget/ImageView;

    move-result-object p2

    sget v1, Lus/zoom/zrcbox/R$drawable;->login_ic_delete:I

    invoke-virtual {p2, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 176
    iget-object p2, p0, Lus/zoom/zrc/login/widget/LoginNumberKeyboardView$MyAdapter;->this$0:Lus/zoom/zrc/login/widget/LoginNumberKeyboardView;

    iget-object v1, p1, Lus/zoom/zrc/login/widget/LoginNumberKeyboardView$ViewHolder;->itemView:Landroid/view/View;

    iget-object v2, p0, Lus/zoom/zrc/login/widget/LoginNumberKeyboardView$MyAdapter;->this$0:Lus/zoom/zrc/login/widget/LoginNumberKeyboardView;

    invoke-static {v2}, Lus/zoom/zrc/login/widget/LoginNumberKeyboardView;->access$700(Lus/zoom/zrc/login/widget/LoginNumberKeyboardView;)Z

    move-result v2

    invoke-static {p2, v1, v2}, Lus/zoom/zrc/login/widget/LoginNumberKeyboardView;->access$800(Lus/zoom/zrc/login/widget/LoginNumberKeyboardView;Landroid/view/View;Z)V

    .line 177
    iget-object p2, p1, Lus/zoom/zrc/login/widget/LoginNumberKeyboardView$ViewHolder;->itemView:Landroid/view/View;

    invoke-static {p2}, Lus/zoom/zrc/base/widget/ZRCRepeatClickTrigger;->handle(Landroid/view/View;)V

    goto/16 :goto_2

    :cond_2
    const/16 v1, 0xb

    if-ne p2, v1, :cond_4

    const/16 v3, 0x42

    .line 180
    invoke-static {p1}, Lus/zoom/zrc/login/widget/LoginNumberKeyboardView$ViewHolder;->access$400(Lus/zoom/zrc/login/widget/LoginNumberKeyboardView$ViewHolder;)Landroid/widget/ImageView;

    move-result-object p2

    invoke-virtual {p2, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 181
    invoke-static {p1}, Lus/zoom/zrc/login/widget/LoginNumberKeyboardView$ViewHolder;->access$500(Lus/zoom/zrc/login/widget/LoginNumberKeyboardView$ViewHolder;)Landroid/widget/TextView;

    move-result-object p2

    invoke-virtual {p2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 182
    invoke-static {p1}, Lus/zoom/zrc/login/widget/LoginNumberKeyboardView$ViewHolder;->access$600(Lus/zoom/zrc/login/widget/LoginNumberKeyboardView$ViewHolder;)Landroid/widget/TextView;

    move-result-object p2

    invoke-virtual {p2, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 183
    iget-object p2, p0, Lus/zoom/zrc/login/widget/LoginNumberKeyboardView$MyAdapter;->this$0:Lus/zoom/zrc/login/widget/LoginNumberKeyboardView;

    invoke-static {p2}, Lus/zoom/zrc/login/widget/LoginNumberKeyboardView;->access$900(Lus/zoom/zrc/login/widget/LoginNumberKeyboardView;)Ljava/lang/CharSequence;

    move-result-object p2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_3

    .line 184
    invoke-static {p1}, Lus/zoom/zrc/login/widget/LoginNumberKeyboardView$ViewHolder;->access$600(Lus/zoom/zrc/login/widget/LoginNumberKeyboardView$ViewHolder;)Landroid/widget/TextView;

    move-result-object p2

    iget-object v1, p0, Lus/zoom/zrc/login/widget/LoginNumberKeyboardView$MyAdapter;->this$0:Lus/zoom/zrc/login/widget/LoginNumberKeyboardView;

    invoke-static {v1}, Lus/zoom/zrc/login/widget/LoginNumberKeyboardView;->access$900(Lus/zoom/zrc/login/widget/LoginNumberKeyboardView;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 186
    :cond_3
    invoke-static {p1}, Lus/zoom/zrc/login/widget/LoginNumberKeyboardView$ViewHolder;->access$600(Lus/zoom/zrc/login/widget/LoginNumberKeyboardView$ViewHolder;)Landroid/widget/TextView;

    move-result-object p2

    sget v1, Lus/zoom/zrcbox/R$string;->title_done:I

    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setText(I)V

    .line 188
    :goto_1
    invoke-static {p1}, Lus/zoom/zrc/login/widget/LoginNumberKeyboardView$ViewHolder;->access$400(Lus/zoom/zrc/login/widget/LoginNumberKeyboardView$ViewHolder;)Landroid/widget/ImageView;

    move-result-object p2

    sget v1, Lus/zoom/zrcbox/R$drawable;->login_ic_done:I

    invoke-virtual {p2, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 189
    invoke-direct {p0, p1}, Lus/zoom/zrc/login/widget/LoginNumberKeyboardView$MyAdapter;->setupNormalPress(Lus/zoom/zrc/login/widget/LoginNumberKeyboardView$ViewHolder;)V

    .line 190
    iget-object p2, p0, Lus/zoom/zrc/login/widget/LoginNumberKeyboardView$MyAdapter;->this$0:Lus/zoom/zrc/login/widget/LoginNumberKeyboardView;

    iget-object v1, p1, Lus/zoom/zrc/login/widget/LoginNumberKeyboardView$ViewHolder;->itemView:Landroid/view/View;

    iget-object v2, p0, Lus/zoom/zrc/login/widget/LoginNumberKeyboardView$MyAdapter;->this$0:Lus/zoom/zrc/login/widget/LoginNumberKeyboardView;

    invoke-static {v2}, Lus/zoom/zrc/login/widget/LoginNumberKeyboardView;->access$1000(Lus/zoom/zrc/login/widget/LoginNumberKeyboardView;)Z

    move-result v2

    invoke-static {p2, v1, v2}, Lus/zoom/zrc/login/widget/LoginNumberKeyboardView;->access$800(Lus/zoom/zrc/login/widget/LoginNumberKeyboardView;Landroid/view/View;Z)V

    goto :goto_2

    .line 192
    :cond_4
    invoke-direct {p0, p1}, Lus/zoom/zrc/login/widget/LoginNumberKeyboardView$MyAdapter;->setupNormalPress(Lus/zoom/zrc/login/widget/LoginNumberKeyboardView$ViewHolder;)V

    .line 193
    invoke-static {p1}, Lus/zoom/zrc/login/widget/LoginNumberKeyboardView$ViewHolder;->access$400(Lus/zoom/zrc/login/widget/LoginNumberKeyboardView$ViewHolder;)Landroid/widget/ImageView;

    move-result-object p2

    invoke-virtual {p2, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 194
    invoke-static {p1}, Lus/zoom/zrc/login/widget/LoginNumberKeyboardView$ViewHolder;->access$500(Lus/zoom/zrc/login/widget/LoginNumberKeyboardView$ViewHolder;)Landroid/widget/TextView;

    move-result-object p2

    invoke-virtual {p2, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 195
    invoke-static {p1}, Lus/zoom/zrc/login/widget/LoginNumberKeyboardView$ViewHolder;->access$600(Lus/zoom/zrc/login/widget/LoginNumberKeyboardView$ViewHolder;)Landroid/widget/TextView;

    move-result-object p2

    const/16 v1, 0x8

    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 196
    iget-object p2, p0, Lus/zoom/zrc/login/widget/LoginNumberKeyboardView$MyAdapter;->this$0:Lus/zoom/zrc/login/widget/LoginNumberKeyboardView;

    invoke-static {p1}, Lus/zoom/zrc/login/widget/LoginNumberKeyboardView$ViewHolder;->access$400(Lus/zoom/zrc/login/widget/LoginNumberKeyboardView$ViewHolder;)Landroid/widget/ImageView;

    move-result-object v1

    iget-object v2, p0, Lus/zoom/zrc/login/widget/LoginNumberKeyboardView$MyAdapter;->this$0:Lus/zoom/zrc/login/widget/LoginNumberKeyboardView;

    invoke-static {v2}, Lus/zoom/zrc/login/widget/LoginNumberKeyboardView;->access$1100(Lus/zoom/zrc/login/widget/LoginNumberKeyboardView;)Z

    move-result v2

    invoke-static {p2, v1, v2}, Lus/zoom/zrc/login/widget/LoginNumberKeyboardView;->access$800(Lus/zoom/zrc/login/widget/LoginNumberKeyboardView;Landroid/view/View;Z)V

    .line 199
    :goto_2
    invoke-static {p1}, Lus/zoom/zrc/login/widget/LoginNumberKeyboardView$ViewHolder;->access$500(Lus/zoom/zrc/login/widget/LoginNumberKeyboardView$ViewHolder;)Landroid/widget/TextView;

    move-result-object p2

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 200
    iget-object p2, p1, Lus/zoom/zrc/login/widget/LoginNumberKeyboardView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p2, v3}, Landroid/view/View;->setId(I)V

    .line 201
    iget-object p2, p1, Lus/zoom/zrc/login/widget/LoginNumberKeyboardView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 203
    iget-object p2, p1, Lus/zoom/zrc/login/widget/LoginNumberKeyboardView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 205
    invoke-static {}, Lus/zoom/zrc/utils/DeviceInfoUtils;->isRunInCrestronMercury()Z

    move-result p2

    if-nez p2, :cond_5

    .line 206
    iget-object p1, p1, Lus/zoom/zrc/login/widget/LoginNumberKeyboardView$ViewHolder;->itemView:Landroid/view/View;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/view/View;->setSoundEffectsEnabled(Z)V

    :cond_5
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 217
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 218
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    .line 220
    iget-object v1, p0, Lus/zoom/zrc/login/widget/LoginNumberKeyboardView$MyAdapter;->this$0:Lus/zoom/zrc/login/widget/LoginNumberKeyboardView;

    invoke-static {v1}, Lus/zoom/zrc/login/widget/LoginNumberKeyboardView;->access$1200(Lus/zoom/zrc/login/widget/LoginNumberKeyboardView;)Lus/zoom/zrc/login/widget/LoginNumberKeyboardView$IKeyBoardListener;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 221
    iget-object v1, p0, Lus/zoom/zrc/login/widget/LoginNumberKeyboardView$MyAdapter;->this$0:Lus/zoom/zrc/login/widget/LoginNumberKeyboardView;

    invoke-static {v1}, Lus/zoom/zrc/login/widget/LoginNumberKeyboardView;->access$1200(Lus/zoom/zrc/login/widget/LoginNumberKeyboardView;)Lus/zoom/zrc/login/widget/LoginNumberKeyboardView$IKeyBoardListener;

    move-result-object v1

    invoke-interface {v1, p1, v0}, Lus/zoom/zrc/login/widget/LoginNumberKeyboardView$IKeyBoardListener;->onKeyBoardClicked(ILjava/lang/String;)V

    :cond_0
    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0
    .param p1    # Landroid/view/ViewGroup;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    .line 142
    invoke-virtual {p0, p1, p2}, Lus/zoom/zrc/login/widget/LoginNumberKeyboardView$MyAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lus/zoom/zrc/login/widget/LoginNumberKeyboardView$ViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lus/zoom/zrc/login/widget/LoginNumberKeyboardView$ViewHolder;
    .locals 4
    .param p1    # Landroid/view/ViewGroup;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    .line 146
    iget-object p2, p0, Lus/zoom/zrc/login/widget/LoginNumberKeyboardView$MyAdapter;->this$0:Lus/zoom/zrc/login/widget/LoginNumberKeyboardView;

    invoke-virtual {p2}, Lus/zoom/zrc/login/widget/LoginNumberKeyboardView;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    iget-object v0, p0, Lus/zoom/zrc/login/widget/LoginNumberKeyboardView$MyAdapter;->this$0:Lus/zoom/zrc/login/widget/LoginNumberKeyboardView;

    invoke-static {v0}, Lus/zoom/zrc/login/widget/LoginNumberKeyboardView;->access$100(Lus/zoom/zrc/login/widget/LoginNumberKeyboardView;)I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 147
    iget-object p2, p0, Lus/zoom/zrc/login/widget/LoginNumberKeyboardView$MyAdapter;->this$0:Lus/zoom/zrc/login/widget/LoginNumberKeyboardView;

    invoke-static {p2}, Lus/zoom/zrc/login/widget/LoginNumberKeyboardView;->access$200(Lus/zoom/zrc/login/widget/LoginNumberKeyboardView;)F

    move-result p2

    const/high16 v0, 0x40000000    # 2.0f

    div-float/2addr p2, v0

    float-to-int p2, p2

    .line 148
    iget-object v1, p0, Lus/zoom/zrc/login/widget/LoginNumberKeyboardView$MyAdapter;->this$0:Lus/zoom/zrc/login/widget/LoginNumberKeyboardView;

    invoke-static {v1}, Lus/zoom/zrc/login/widget/LoginNumberKeyboardView;->access$200(Lus/zoom/zrc/login/widget/LoginNumberKeyboardView;)F

    move-result v1

    div-float/2addr v1, v0

    float-to-int v1, v1

    .line 149
    iget-object v2, p0, Lus/zoom/zrc/login/widget/LoginNumberKeyboardView$MyAdapter;->this$0:Lus/zoom/zrc/login/widget/LoginNumberKeyboardView;

    invoke-static {v2}, Lus/zoom/zrc/login/widget/LoginNumberKeyboardView;->access$300(Lus/zoom/zrc/login/widget/LoginNumberKeyboardView;)F

    move-result v2

    div-float/2addr v2, v0

    float-to-int v2, v2

    .line 150
    iget-object v3, p0, Lus/zoom/zrc/login/widget/LoginNumberKeyboardView$MyAdapter;->this$0:Lus/zoom/zrc/login/widget/LoginNumberKeyboardView;

    invoke-static {v3}, Lus/zoom/zrc/login/widget/LoginNumberKeyboardView;->access$300(Lus/zoom/zrc/login/widget/LoginNumberKeyboardView;)F

    move-result v3

    div-float/2addr v3, v0

    float-to-int v0, v3

    .line 151
    invoke-virtual {p1, p2, v2, v1, v0}, Landroid/view/View;->setPadding(IIII)V

    .line 152
    new-instance p2, Lus/zoom/zrc/login/widget/LoginNumberKeyboardView$ViewHolder;

    iget-object v0, p0, Lus/zoom/zrc/login/widget/LoginNumberKeyboardView$MyAdapter;->this$0:Lus/zoom/zrc/login/widget/LoginNumberKeyboardView;

    invoke-direct {p2, v0, p1}, Lus/zoom/zrc/login/widget/LoginNumberKeyboardView$ViewHolder;-><init>(Lus/zoom/zrc/login/widget/LoginNumberKeyboardView;Landroid/view/View;)V

    return-object p2
.end method
