# classes.dex

.class public final Landroid/app/assist/AssistStructure$ViewNodeParcelable;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/assist/AssistStructure;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ViewNodeParcelable"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/app/assist/AssistStructure$ViewNodeParcelable;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mViewNode:Landroid/app/assist/AssistStructure$ViewNode;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Landroid/app/assist/AssistStructure$ViewNodeParcelable$1;

    invoke-direct {v0}, Landroid/app/assist/AssistStructure$ViewNodeParcelable$1;-><init>()V

    sput-object v0, Landroid/app/assist/AssistStructure$ViewNodeParcelable;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/app/assist/AssistStructure$ViewNode;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/app/assist/AssistStructure$ViewNodeParcelable;->mViewNode:Landroid/app/assist/AssistStructure$ViewNode;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/app/assist/AssistStructure$ViewNode;

    invoke-direct {v0, p1}, Landroid/app/assist/AssistStructure$ViewNode;-><init>(Landroid/os/Parcel;)V

    iput-object v0, p0, Landroid/app/assist/AssistStructure$ViewNodeParcelable;->mViewNode:Landroid/app/assist/AssistStructure$ViewNode;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public getViewNode()Landroid/app/assist/AssistStructure$ViewNode;
    .registers 2

    iget-object v0, p0, Landroid/app/assist/AssistStructure$ViewNodeParcelable;->mViewNode:Landroid/app/assist/AssistStructure$ViewNode;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 9

    iget-object v0, p0, Landroid/app/assist/AssistStructure$ViewNodeParcelable;->mViewNode:Landroid/app/assist/AssistStructure$ViewNode;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Landroid/app/assist/AssistStructure$ViewNode;->writeSelfToParcel(Landroid/os/Parcel;Landroid/os/PooledStringWriter;Z[FZ)I

    return-void
.end method
