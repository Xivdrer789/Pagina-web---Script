//------------------------------------------------------------------------------
// <auto-generated>
//     Este código se generó a partir de una plantilla.
//
//     Los cambios en este archivo pueden ocasionar un comportamiento incorrecto y se perderán si
//     el código se vuelve a generar.
// </auto-generated>
//------------------------------------------------------------------------------

using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Collections.Specialized;
using System.ComponentModel;
using System.Globalization;
using System.Runtime.Serialization;

namespace CapaEntidades
{
    [DataContract(IsReference = true)]
    [KnownType(typeof(Mascota))]
    [KnownType(typeof(Usuario))]
    public partial class Publicacion: IObjectWithChangeTracker, INotifyPropertyChanged
    {
        #region Propiedades primitivas
    
        [DataMember]
        public System.DateTime Fecha_Perdida
        {
            get { return _fecha_Perdida; }
            set
            {
                if (_fecha_Perdida != value)
                {
                    _fecha_Perdida = value;
                    OnPropertyChanged("Fecha_Perdida");
                }
            }
        }
        private System.DateTime _fecha_Perdida;
    
        [DataMember]
        public byte[] imagen_publicacion
        {
            get { return _imagen_publicacion; }
            set
            {
                if (_imagen_publicacion != value)
                {
                    _imagen_publicacion = value;
                    OnPropertyChanged("imagen_publicacion");
                }
            }
        }
        private byte[] _imagen_publicacion;
    
        [DataMember]
        public string descripcion_publicacion
        {
            get { return _descripcion_publicacion; }
            set
            {
                if (_descripcion_publicacion != value)
                {
                    _descripcion_publicacion = value;
                    OnPropertyChanged("descripcion_publicacion");
                }
            }
        }
        private string _descripcion_publicacion;
    
        [DataMember]
        public string nombre_publicacion
        {
            get { return _nombre_publicacion; }
            set
            {
                if (_nombre_publicacion != value)
                {
                    _nombre_publicacion = value;
                    OnPropertyChanged("nombre_publicacion");
                }
            }
        }
        private string _nombre_publicacion;
    
        [DataMember]
        public int id_publicacion
        {
            get { return _id_publicacion; }
            set
            {
                if (_id_publicacion != value)
                {
                    if (ChangeTracker.ChangeTrackingEnabled && ChangeTracker.State != ObjectState.Added)
                    {
                        throw new InvalidOperationException("La propiedad 'id_publicacion' forma parte de la clave del objeto y no se puede modificar. Solo se pueden realizar cambios en las propiedades de clave cuando no se realiza un seguimiento del objeto o su estado es Agregado.");
                    }
                    _id_publicacion = value;
                    OnPropertyChanged("id_publicacion");
                }
            }
        }
        private int _id_publicacion;
    
        [DataMember]
        public Nullable<int> Usuario_id
        {
            get { return _usuario_id; }
            set
            {
                if (_usuario_id != value)
                {
                    ChangeTracker.RecordOriginalValue("Usuario_id", _usuario_id);
                    if (!IsDeserializing)
                    {
                        if (Usuario != null && Usuario.id_usuario != value)
                        {
                            Usuario = null;
                        }
                    }
                    _usuario_id = value;
                    OnPropertyChanged("Usuario_id");
                }
            }
        }
        private Nullable<int> _usuario_id;

        #endregion
        #region Propiedades de navegación
    
        [DataMember]
        public TrackableCollection<Mascota> Mascota
        {
            get
            {
                if (_mascota == null)
                {
                    _mascota = new TrackableCollection<Mascota>();
                    _mascota.CollectionChanged += FixupMascota;
                }
                return _mascota;
            }
            set
            {
                if (!ReferenceEquals(_mascota, value))
                {
                    if (ChangeTracker.ChangeTrackingEnabled)
                    {
                        throw new InvalidOperationException("No se puede establecer el elemento FixupChangeTrackingCollection cuando se ha habilitado ChangeTracking");
                    }
                    if (_mascota != null)
                    {
                        _mascota.CollectionChanged -= FixupMascota;
                    }
                    _mascota = value;
                    if (_mascota != null)
                    {
                        _mascota.CollectionChanged += FixupMascota;
                    }
                    OnNavigationPropertyChanged("Mascota");
                }
            }
        }
        private TrackableCollection<Mascota> _mascota;
    
        [DataMember]
        public Usuario Usuario
        {
            get { return _usuario; }
            set
            {
                if (!ReferenceEquals(_usuario, value))
                {
                    var previousValue = _usuario;
                    _usuario = value;
                    FixupUsuario(previousValue);
                    OnNavigationPropertyChanged("Usuario");
                }
            }
        }
        private Usuario _usuario;

        #endregion
        #region ChangeTracking
    
        protected virtual void OnPropertyChanged(String propertyName)
        {
            if (ChangeTracker.State != ObjectState.Added && ChangeTracker.State != ObjectState.Deleted)
            {
                ChangeTracker.State = ObjectState.Modified;
            }
            if (_propertyChanged != null)
            {
                _propertyChanged(this, new PropertyChangedEventArgs(propertyName));
            }
        }
    
        protected virtual void OnNavigationPropertyChanged(String propertyName)
        {
            if (_propertyChanged != null)
            {
                _propertyChanged(this, new PropertyChangedEventArgs(propertyName));
            }
        }
    
        event PropertyChangedEventHandler INotifyPropertyChanged.PropertyChanged{ add { _propertyChanged += value; } remove { _propertyChanged -= value; } }
        private event PropertyChangedEventHandler _propertyChanged;
        private ObjectChangeTracker _changeTracker;
    
        [DataMember]
        public ObjectChangeTracker ChangeTracker
        {
            get
            {
                if (_changeTracker == null)
                {
                    _changeTracker = new ObjectChangeTracker();
                    _changeTracker.ObjectStateChanging += HandleObjectStateChanging;
                }
                return _changeTracker;
            }
            set
            {
                if(_changeTracker != null)
                {
                    _changeTracker.ObjectStateChanging -= HandleObjectStateChanging;
                }
                _changeTracker = value;
                if(_changeTracker != null)
                {
                    _changeTracker.ObjectStateChanging += HandleObjectStateChanging;
                }
            }
        }
    
        private void HandleObjectStateChanging(object sender, ObjectStateChangingEventArgs e)
        {
            if (e.NewState == ObjectState.Deleted)
            {
                ClearNavigationProperties();
            }
        }
    
        protected bool IsDeserializing { get; private set; }
    
        [OnDeserializing]
        public void OnDeserializingMethod(StreamingContext context)
        {
            IsDeserializing = true;
        }
    
        [OnDeserialized]
        public void OnDeserializedMethod(StreamingContext context)
        {
            IsDeserializing = false;
            ChangeTracker.ChangeTrackingEnabled = true;
        }
    
        protected virtual void ClearNavigationProperties()
        {
            Mascota.Clear();
            Usuario = null;
        }

        #endregion
        #region Corrección de asociación
    
        private void FixupUsuario(Usuario previousValue, bool skipKeys = false)
        {
            if (IsDeserializing)
            {
                return;
            }
    
            if (previousValue != null && previousValue.Publicacion.Contains(this))
            {
                previousValue.Publicacion.Remove(this);
            }
    
            if (Usuario != null)
            {
                if (!Usuario.Publicacion.Contains(this))
                {
                    Usuario.Publicacion.Add(this);
                }
    
                Usuario_id = Usuario.id_usuario;
            }
            else if (!skipKeys)
            {
                Usuario_id = null;
            }
    
            if (ChangeTracker.ChangeTrackingEnabled)
            {
                if (ChangeTracker.OriginalValues.ContainsKey("Usuario")
                    && (ChangeTracker.OriginalValues["Usuario"] == Usuario))
                {
                    ChangeTracker.OriginalValues.Remove("Usuario");
                }
                else
                {
                    ChangeTracker.RecordOriginalValue("Usuario", previousValue);
                }
                if (Usuario != null && !Usuario.ChangeTracker.ChangeTrackingEnabled)
                {
                    Usuario.StartTracking();
                }
            }
        }
    
        private void FixupMascota(object sender, NotifyCollectionChangedEventArgs e)
        {
            if (IsDeserializing)
            {
                return;
            }
    
            if (e.NewItems != null)
            {
                foreach (Mascota item in e.NewItems)
                {
                    item.Publicacion = this;
                    if (ChangeTracker.ChangeTrackingEnabled)
                    {
                        if (!item.ChangeTracker.ChangeTrackingEnabled)
                        {
                            item.StartTracking();
                        }
                        ChangeTracker.RecordAdditionToCollectionProperties("Mascota", item);
                    }
                }
            }
    
            if (e.OldItems != null)
            {
                foreach (Mascota item in e.OldItems)
                {
                    if (ReferenceEquals(item.Publicacion, this))
                    {
                        item.Publicacion = null;
                    }
                    if (ChangeTracker.ChangeTrackingEnabled)
                    {
                        ChangeTracker.RecordRemovalFromCollectionProperties("Mascota", item);
                    }
                }
            }
        }

        #endregion
    }
}