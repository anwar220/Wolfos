# classes3.dex

.class public Landroid/util/EventLogTags$Description;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/util/EventLogTags;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Description"
.end annotation


# instance fields
.field public final mName:Ljava/lang/String;

.field public final mTag:I


# direct methods
.method constructor <init>(ILjava/lang/String;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/util/EventLogTags$Description;->mTag:I

    iput-object p2, p0, Landroid/util/EventLogTags$Description;->mName:Ljava/lang/String;

    return-void
.end method
